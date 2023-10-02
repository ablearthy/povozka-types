module Povozka.Utils (tlHandleOpt, encodeFlag) where

import Data.Binary
import Data.Binary.Put

import Data.Word
import Data.Bits
import Data.List (foldl')

tlHandleOpt :: Binary out => Word32 -> Maybe Int -> Get (Maybe out)
tlHandleOpt n Nothing
  | n /= 0 = Just <$> get
  | otherwise = pure Nothing
tlHandleOpt n (Just idx)
  | testBit n idx = Just <$> get
  | otherwise = pure Nothing

encodeFlag :: [(Bool, Int)] -> Put
encodeFlag fields = putWord32le n
  where
    n = foldl' (.|.) 0 (map (uncurry f) fields)
    f :: Bool -> Int -> Word32
    f False _ = 0
    f True idx = 1 `shiftL` idx 