module Main (main) where

import qualified Data.Binary as B
import Povozka.Types

import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as BSL
import qualified Data.List
import qualified Data.Vector
import Data.Word (Word8)
import qualified Numeric

showHex :: Word8 -> String
showHex l = case Numeric.showHex (fromIntegral l) "" of
    [c] -> ['0', c]
    t -> t

pprintBS :: BSL.ByteString -> String
pprintBS bs =
    Data.List.unlines
        $ zipWith (\n c -> show n <> " | " <> Data.List.unwords c) [0 :: Int, 0x10 ..] chunks
  where
    chunks = case BSL.foldr go (0, [], []) bs of (_, b, a) -> b : a

    go :: Word8 -> (Int, [String], [[String]]) -> (Int, [String], [[String]])
    go c (cnt, line, ls) = ((cnt + 1) `mod` 16, showHex c : line', lines')
      where
        line' = if cnt == 0 then [] else line
        lines' = if cnt == 0 && not (null line) then line : ls else ls

mkInt128 = Int128' . BS.pack

mkBytes = Bytes' . BS.pack

mkVector = Vector . Vector' . Data.Vector.fromList

main :: IO ()
main = do
    let bs = B.encode $ Method'Req_pq_multi (Int128' (BS.pack [0xDA, 0x60, 0x3B, 0x0B, 0x6C, 0x74, 0xD6, 0x0E, 0xC9, 0x4A, 0x04, 0xD8, 0x3A, 0xF2, 0x02, 0x7D]))
    let bs' =
            B.encode
                $ ResPQ
                    ( ResPQ'
                        (mkInt128 [0xDA, 0x60, 0x3B, 0x0B, 0x6C, 0x74, 0xD6, 0x0E, 0xC9, 0x4A, 0x04, 0xD8, 0x3A, 0xF2, 0x02, 0x7D])
                        (mkInt128 [0x8C, 0x0C, 0x71, 0x9D, 0x73, 0x8B, 0x75, 0x78, 0x66, 0xBA, 0x31, 0xF7, 0xEF, 0x43, 0x97, 0x39])
                        (mkBytes  [0x1D, 0x03, 0x06, 0xD7, 0x8C, 0x29, 0x2A, 0x69])
                        (mkVector [Long' 0x0BC35F3509F7B7A5, Long' 0xC3B42B026CE86B21, Long' 0xD09D1D85DE64FD85])
                    )
    putStrLn $ pprintBS bs
    putStrLn $ pprintBS bs'
