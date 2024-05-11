module Povozka.MTProto where

import qualified Data.Binary
import qualified Data.Binary.Get
import qualified Data.Binary.Put

import qualified GHC.Base

import Prelude hiding (String)

import Povozka.Primitives

instance Data.Binary.Binary Bad_msg_notification'
    where {get = do {_bad_msg_id_0 <- Data.Binary.get;
                     _bad_msg_seqno_1 <- Data.Binary.get;
                     _error_code_2 <- Data.Binary.get;
                     GHC.Base.pure (Bad_msg_notification' _bad_msg_id_0 _bad_msg_seqno_1 _error_code_2)};
           put to_be_encoded_3 = do {Data.Binary.put to_be_encoded_3._bad_msg_id;
                                     Data.Binary.put to_be_encoded_3._bad_msg_seqno;
                                     Data.Binary.put to_be_encoded_3._error_code}}
instance Data.Binary.Binary Bad_server_salt'
    where {get = do {_bad_msg_id_0 <- Data.Binary.get;
                     _bad_msg_seqno_1 <- Data.Binary.get;
                     _error_code_2 <- Data.Binary.get;
                     _new_server_salt_3 <- Data.Binary.get;
                     GHC.Base.pure (Bad_server_salt' _bad_msg_id_0 _bad_msg_seqno_1 _error_code_2 _new_server_salt_3)};
           put to_be_encoded_4 = do {Data.Binary.put to_be_encoded_4._bad_msg_id;
                                     Data.Binary.put to_be_encoded_4._bad_msg_seqno;
                                     Data.Binary.put to_be_encoded_4._error_code;
                                     Data.Binary.put to_be_encoded_4._new_server_salt}}
data BadMsgNotification
    = Bad_msg_notification !Bad_msg_notification'
    | Bad_server_salt !Bad_server_salt'
data Bad_msg_notification'
    = Bad_msg_notification' {_bad_msg_id :: !Long',
                             _bad_msg_seqno :: !Int',
                             _error_code :: !Int'}
data Bad_server_salt'
    = Bad_server_salt' {_bad_msg_id :: !Long',
                        _bad_msg_seqno :: !Int',
                        _error_code :: !Int',
                        _new_server_salt :: !Long'}
instance Data.Binary.Binary BadMsgNotification
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {2817521681 -> fmap Bad_msg_notification Data.Binary.get;
                      3987424379 -> fmap Bad_server_salt Data.Binary.get}};
           put (Bad_msg_notification tmp_1) = do {Data.Binary.Put.putWord32le 2817521681;
                                                  Data.Binary.put tmp_1};
           put (Bad_server_salt tmp_2) = do {Data.Binary.Put.putWord32le 3987424379;
                                             Data.Binary.put tmp_2}}
instance Data.Binary.Binary Bind_auth_key_inner'
    where {get = do {_nonce_0 <- Data.Binary.get;
                     _temp_auth_key_id_1 <- Data.Binary.get;
                     _perm_auth_key_id_2 <- Data.Binary.get;
                     _temp_session_id_3 <- Data.Binary.get;
                     _expires_at_4 <- Data.Binary.get;
                     GHC.Base.pure (Bind_auth_key_inner' _nonce_0 _temp_auth_key_id_1 _perm_auth_key_id_2 _temp_session_id_3 _expires_at_4)};
           put to_be_encoded_5 = do {Data.Binary.put to_be_encoded_5._nonce;
                                     Data.Binary.put to_be_encoded_5._temp_auth_key_id;
                                     Data.Binary.put to_be_encoded_5._perm_auth_key_id;
                                     Data.Binary.put to_be_encoded_5._temp_session_id;
                                     Data.Binary.put to_be_encoded_5._expires_at}}
data BindAuthKeyInner = Bind_auth_key_inner !Bind_auth_key_inner'
data Bind_auth_key_inner'
    = Bind_auth_key_inner' {_nonce :: !Long',
                            _temp_auth_key_id :: !Long',
                            _perm_auth_key_id :: !Long',
                            _temp_session_id :: !Long',
                            _expires_at :: !Int'}
instance Data.Binary.Binary BindAuthKeyInner
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {1973679973 -> fmap Bind_auth_key_inner Data.Binary.get}};
           put (Bind_auth_key_inner tmp_1) = do {Data.Binary.Put.putWord32le 1973679973;
                                                 Data.Binary.put tmp_1}}
instance Data.Binary.Binary Client_DH_inner_data'
    where {get = do {_nonce_0 <- Data.Binary.get;
                     _server_nonce_1 <- Data.Binary.get;
                     _retry_id_2 <- Data.Binary.get;
                     _g_b_3 <- Data.Binary.get;
                     GHC.Base.pure (Client_DH_inner_data' _nonce_0 _server_nonce_1 _retry_id_2 _g_b_3)};
           put to_be_encoded_4 = do {Data.Binary.put to_be_encoded_4._nonce;
                                     Data.Binary.put to_be_encoded_4._server_nonce;
                                     Data.Binary.put to_be_encoded_4._retry_id;
                                     Data.Binary.put to_be_encoded_4._g_b}}
data Client_DH_Inner_Data
    = Client_DH_inner_data !Client_DH_inner_data'
data Client_DH_inner_data'
    = Client_DH_inner_data' {_nonce :: !Int128',
                             _server_nonce :: !Int128',
                             _retry_id :: !Long',
                             _g_b :: !Bytes'}
instance Data.Binary.Binary Client_DH_Inner_Data
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {1715713620 -> fmap Client_DH_inner_data Data.Binary.get}};
           put (Client_DH_inner_data tmp_1) = do {Data.Binary.Put.putWord32le 1715713620;
                                                  Data.Binary.put tmp_1}}
instance Data.Binary.Binary Destroy_auth_key_fail'
    where {get = GHC.Base.pure Destroy_auth_key_fail';
           put to_be_encoded_0 = do GHC.Base.pure ()}
instance Data.Binary.Binary Destroy_auth_key_none'
    where {get = GHC.Base.pure Destroy_auth_key_none';
           put to_be_encoded_0 = do GHC.Base.pure ()}
instance Data.Binary.Binary Destroy_auth_key_ok'
    where {get = GHC.Base.pure Destroy_auth_key_ok';
           put to_be_encoded_0 = do GHC.Base.pure ()}
data DestroyAuthKeyRes
    = Destroy_auth_key_fail !Destroy_auth_key_fail'
    | Destroy_auth_key_none !Destroy_auth_key_none'
    | Destroy_auth_key_ok !Destroy_auth_key_ok'
data Destroy_auth_key_fail' = Destroy_auth_key_fail' {}
data Destroy_auth_key_none' = Destroy_auth_key_none' {}
data Destroy_auth_key_ok' = Destroy_auth_key_ok' {}
instance Data.Binary.Binary DestroyAuthKeyRes
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {3926956819 -> fmap Destroy_auth_key_fail Data.Binary.get;
                      178201177 -> fmap Destroy_auth_key_none Data.Binary.get;
                      4133544404 -> fmap Destroy_auth_key_ok Data.Binary.get}};
           put (Destroy_auth_key_fail tmp_1) = do {Data.Binary.Put.putWord32le 3926956819;
                                                   Data.Binary.put tmp_1};
           put (Destroy_auth_key_none tmp_2) = do {Data.Binary.Put.putWord32le 178201177;
                                                   Data.Binary.put tmp_2};
           put (Destroy_auth_key_ok tmp_3) = do {Data.Binary.Put.putWord32le 4133544404;
                                                 Data.Binary.put tmp_3}}
instance Data.Binary.Binary Destroy_session_none'
    where {get = do {_session_id_0 <- Data.Binary.get;
                     GHC.Base.pure (Destroy_session_none' _session_id_0)};
           put to_be_encoded_1 = do Data.Binary.put to_be_encoded_1._session_id}
instance Data.Binary.Binary Destroy_session_ok'
    where {get = do {_session_id_0 <- Data.Binary.get;
                     GHC.Base.pure (Destroy_session_ok' _session_id_0)};
           put to_be_encoded_1 = do Data.Binary.put to_be_encoded_1._session_id}
data DestroySessionRes
    = Destroy_session_none !Destroy_session_none'
    | Destroy_session_ok !Destroy_session_ok'
data Destroy_session_none'
    = Destroy_session_none' {_session_id :: !Long'}
data Destroy_session_ok'
    = Destroy_session_ok' {_session_id :: !Long'}
instance Data.Binary.Binary DestroySessionRes
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {1658015945 -> fmap Destroy_session_none Data.Binary.get;
                      3793765884 -> fmap Destroy_session_ok Data.Binary.get}};
           put (Destroy_session_none tmp_1) = do {Data.Binary.Put.putWord32le 1658015945;
                                                  Data.Binary.put tmp_1};
           put (Destroy_session_ok tmp_2) = do {Data.Binary.Put.putWord32le 3793765884;
                                                Data.Binary.put tmp_2}}
instance Data.Binary.Binary Future_salt'
    where {get = do {_valid_since_0 <- Data.Binary.get;
                     _valid_until_1 <- Data.Binary.get;
                     _salt_2 <- Data.Binary.get;
                     GHC.Base.pure (Future_salt' _valid_since_0 _valid_until_1 _salt_2)};
           put to_be_encoded_3 = do {Data.Binary.put to_be_encoded_3._valid_since;
                                     Data.Binary.put to_be_encoded_3._valid_until;
                                     Data.Binary.put to_be_encoded_3._salt}}
data FutureSalt = Future_salt !Future_salt'
data Future_salt'
    = Future_salt' {_valid_since :: !Int',
                    _valid_until :: !Int',
                    _salt :: !Long'}
instance Data.Binary.Binary FutureSalt
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {155834844 -> fmap Future_salt Data.Binary.get}};
           put (Future_salt tmp_1) = do {Data.Binary.Put.putWord32le 155834844;
                                         Data.Binary.put tmp_1}}
instance Data.Binary.Binary Future_salts'
    where {get = do {_req_msg_id_0 <- Data.Binary.get;
                     _now_1 <- Data.Binary.get;
                     _salts_2 <- Data.Binary.get;
                     GHC.Base.pure (Future_salts' _req_msg_id_0 _now_1 _salts_2)};
           put to_be_encoded_3 = do {Data.Binary.put to_be_encoded_3._req_msg_id;
                                     Data.Binary.put to_be_encoded_3._now;
                                     Data.Binary.put to_be_encoded_3._salts}}
data FutureSalts = Future_salts !Future_salts'
data Future_salts'
    = Future_salts' {_req_msg_id :: !Long',
                     _now :: !Int',
                     _salts :: !(Vector' Future_salt')}
instance Data.Binary.Binary FutureSalts
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {2924480661 -> fmap Future_salts Data.Binary.get}};
           put (Future_salts tmp_1) = do {Data.Binary.Put.putWord32le 2924480661;
                                          Data.Binary.put tmp_1}}
instance Data.Binary.Binary Http_wait'
    where {get = do {_max_delay_0 <- Data.Binary.get;
                     _wait_after_1 <- Data.Binary.get;
                     _max_wait_2 <- Data.Binary.get;
                     GHC.Base.pure (Http_wait' _max_delay_0 _wait_after_1 _max_wait_2)};
           put to_be_encoded_3 = do {Data.Binary.put to_be_encoded_3._max_delay;
                                     Data.Binary.put to_be_encoded_3._wait_after;
                                     Data.Binary.put to_be_encoded_3._max_wait}}
data HttpWait = Http_wait !Http_wait'
data Http_wait'
    = Http_wait' {_max_delay :: !Int',
                  _wait_after :: !Int',
                  _max_wait :: !Int'}
instance Data.Binary.Binary HttpWait
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {2459514271 -> fmap Http_wait Data.Binary.get}};
           put (Http_wait tmp_1) = do {Data.Binary.Put.putWord32le 2459514271;
                                       Data.Binary.put tmp_1}}
instance Data.Binary.Binary Message'
    where {get = do {_msg_id_0 <- Data.Binary.get;
                     _seqno_1 <- Data.Binary.get;
                     _bytes_2 <- Data.Binary.get;
                     _body_3 <- Data.Binary.get;
                     GHC.Base.pure (Message' _msg_id_0 _seqno_1 _bytes_2 _body_3)};
           put to_be_encoded_4 = do {Data.Binary.put to_be_encoded_4._msg_id;
                                     Data.Binary.put to_be_encoded_4._seqno;
                                     Data.Binary.put to_be_encoded_4._bytes;
                                     Data.Binary.put to_be_encoded_4._body}}
data Message = Message !Message'
data Message'
    = Message' {_msg_id :: !Long',
                _seqno :: !Int',
                _bytes :: !Int',
                _body :: !Object}
instance Data.Binary.Binary Message
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {1538843921 -> fmap Message Data.Binary.get}};
           put (Message tmp_1) = do {Data.Binary.Put.putWord32le 1538843921;
                                     Data.Binary.put tmp_1}}
instance Data.Binary.Binary Msg_container'
    where {get = do {_messages_0 <- Data.Binary.get;
                     GHC.Base.pure (Msg_container' _messages_0)};
           put to_be_encoded_1 = do Data.Binary.put to_be_encoded_1._messages}
data MessageContainer = Msg_container !Msg_container'
data Msg_container'
    = Msg_container' {_messages :: !(Vector' Message')}
instance Data.Binary.Binary MessageContainer
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {1945237724 -> fmap Msg_container Data.Binary.get}};
           put (Msg_container tmp_1) = do {Data.Binary.Put.putWord32le 1945237724;
                                           Data.Binary.put tmp_1}}
instance Data.Binary.Binary Msg_copy'
    where {get = do {_orig_message_0 <- Data.Binary.get;
                     GHC.Base.pure (Msg_copy' _orig_message_0)};
           put to_be_encoded_1 = do Data.Binary.put to_be_encoded_1._orig_message}
data MessageCopy = Msg_copy !Msg_copy'
data Msg_copy' = Msg_copy' {_orig_message :: !Message}
instance Data.Binary.Binary MessageCopy
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {3764405938 -> fmap Msg_copy Data.Binary.get}};
           put (Msg_copy tmp_1) = do {Data.Binary.Put.putWord32le 3764405938;
                                      Data.Binary.put tmp_1}}
instance Data.Binary.Binary Msg_detailed_info'
    where {get = do {_msg_id_0 <- Data.Binary.get;
                     _answer_msg_id_1 <- Data.Binary.get;
                     _bytes_2 <- Data.Binary.get;
                     _status_3 <- Data.Binary.get;
                     GHC.Base.pure (Msg_detailed_info' _msg_id_0 _answer_msg_id_1 _bytes_2 _status_3)};
           put to_be_encoded_4 = do {Data.Binary.put to_be_encoded_4._msg_id;
                                     Data.Binary.put to_be_encoded_4._answer_msg_id;
                                     Data.Binary.put to_be_encoded_4._bytes;
                                     Data.Binary.put to_be_encoded_4._status}}
instance Data.Binary.Binary Msg_new_detailed_info'
    where {get = do {_answer_msg_id_0 <- Data.Binary.get;
                     _bytes_1 <- Data.Binary.get;
                     _status_2 <- Data.Binary.get;
                     GHC.Base.pure (Msg_new_detailed_info' _answer_msg_id_0 _bytes_1 _status_2)};
           put to_be_encoded_3 = do {Data.Binary.put to_be_encoded_3._answer_msg_id;
                                     Data.Binary.put to_be_encoded_3._bytes;
                                     Data.Binary.put to_be_encoded_3._status}}
data MsgDetailedInfo
    = Msg_detailed_info !Msg_detailed_info'
    | Msg_new_detailed_info !Msg_new_detailed_info'
data Msg_detailed_info'
    = Msg_detailed_info' {_msg_id :: !Long',
                          _answer_msg_id :: !Long',
                          _bytes :: !Int',
                          _status :: !Int'}
data Msg_new_detailed_info'
    = Msg_new_detailed_info' {_answer_msg_id :: !Long',
                              _bytes :: !Int',
                              _status :: !Int'}
instance Data.Binary.Binary MsgDetailedInfo
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {661470918 -> fmap Msg_detailed_info Data.Binary.get;
                      2157819615 -> fmap Msg_new_detailed_info Data.Binary.get}};
           put (Msg_detailed_info tmp_1) = do {Data.Binary.Put.putWord32le 661470918;
                                               Data.Binary.put tmp_1};
           put (Msg_new_detailed_info tmp_2) = do {Data.Binary.Put.putWord32le 2157819615;
                                                   Data.Binary.put tmp_2}}
instance Data.Binary.Binary Msg_resend_req'
    where {get = do {_msg_ids_0 <- Data.Binary.get;
                     GHC.Base.pure (Msg_resend_req' _msg_ids_0)};
           put to_be_encoded_1 = do Data.Binary.put to_be_encoded_1._msg_ids}
data MsgResendReq = Msg_resend_req !Msg_resend_req'
data Msg_resend_req'
    = Msg_resend_req' {_msg_ids :: !(Vector Long')}
instance Data.Binary.Binary MsgResendReq
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {2105940488 -> fmap Msg_resend_req Data.Binary.get}};
           put (Msg_resend_req tmp_1) = do {Data.Binary.Put.putWord32le 2105940488;
                                            Data.Binary.put tmp_1}}
instance Data.Binary.Binary Msgs_ack'
    where {get = do {_msg_ids_0 <- Data.Binary.get;
                     GHC.Base.pure (Msgs_ack' _msg_ids_0)};
           put to_be_encoded_1 = do Data.Binary.put to_be_encoded_1._msg_ids}
data MsgsAck = Msgs_ack !Msgs_ack'
data Msgs_ack' = Msgs_ack' {_msg_ids :: !(Vector Long')}
instance Data.Binary.Binary MsgsAck
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {1658238041 -> fmap Msgs_ack Data.Binary.get}};
           put (Msgs_ack tmp_1) = do {Data.Binary.Put.putWord32le 1658238041;
                                      Data.Binary.put tmp_1}}
instance Data.Binary.Binary Msgs_all_info'
    where {get = do {_msg_ids_0 <- Data.Binary.get;
                     _info_1 <- Data.Binary.get;
                     GHC.Base.pure (Msgs_all_info' _msg_ids_0 _info_1)};
           put to_be_encoded_2 = do {Data.Binary.put to_be_encoded_2._msg_ids;
                                     Data.Binary.put to_be_encoded_2._info}}
data MsgsAllInfo = Msgs_all_info !Msgs_all_info'
data Msgs_all_info'
    = Msgs_all_info' {_msg_ids :: !(Vector Long'), _info :: !Bytes'}
instance Data.Binary.Binary MsgsAllInfo
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {2361446705 -> fmap Msgs_all_info Data.Binary.get}};
           put (Msgs_all_info tmp_1) = do {Data.Binary.Put.putWord32le 2361446705;
                                           Data.Binary.put tmp_1}}
instance Data.Binary.Binary Msgs_state_info'
    where {get = do {_req_msg_id_0 <- Data.Binary.get;
                     _info_1 <- Data.Binary.get;
                     GHC.Base.pure (Msgs_state_info' _req_msg_id_0 _info_1)};
           put to_be_encoded_2 = do {Data.Binary.put to_be_encoded_2._req_msg_id;
                                     Data.Binary.put to_be_encoded_2._info}}
data MsgsStateInfo = Msgs_state_info !Msgs_state_info'
data Msgs_state_info'
    = Msgs_state_info' {_req_msg_id :: !Long', _info :: !Bytes'}
instance Data.Binary.Binary MsgsStateInfo
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {81704317 -> fmap Msgs_state_info Data.Binary.get}};
           put (Msgs_state_info tmp_1) = do {Data.Binary.Put.putWord32le 81704317;
                                             Data.Binary.put tmp_1}}
instance Data.Binary.Binary Msgs_state_req'
    where {get = do {_msg_ids_0 <- Data.Binary.get;
                     GHC.Base.pure (Msgs_state_req' _msg_ids_0)};
           put to_be_encoded_1 = do Data.Binary.put to_be_encoded_1._msg_ids}
data MsgsStateReq = Msgs_state_req !Msgs_state_req'
data Msgs_state_req'
    = Msgs_state_req' {_msg_ids :: !(Vector Long')}
instance Data.Binary.Binary MsgsStateReq
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {3664378706 -> fmap Msgs_state_req Data.Binary.get}};
           put (Msgs_state_req tmp_1) = do {Data.Binary.Put.putWord32le 3664378706;
                                            Data.Binary.put tmp_1}}
instance Data.Binary.Binary New_session_created'
    where {get = do {_first_msg_id_0 <- Data.Binary.get;
                     _unique_id_1 <- Data.Binary.get;
                     _server_salt_2 <- Data.Binary.get;
                     GHC.Base.pure (New_session_created' _first_msg_id_0 _unique_id_1 _server_salt_2)};
           put to_be_encoded_3 = do {Data.Binary.put to_be_encoded_3._first_msg_id;
                                     Data.Binary.put to_be_encoded_3._unique_id;
                                     Data.Binary.put to_be_encoded_3._server_salt}}
data NewSession = New_session_created !New_session_created'
data New_session_created'
    = New_session_created' {_first_msg_id :: !Long',
                            _unique_id :: !Long',
                            _server_salt :: !Long'}
instance Data.Binary.Binary NewSession
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {2663516424 -> fmap New_session_created Data.Binary.get}};
           put (New_session_created tmp_1) = do {Data.Binary.Put.putWord32le 2663516424;
                                                 Data.Binary.put tmp_1}}
instance Data.Binary.Binary Gzip_packed'
    where {get = do {_packed_data_0 <- Data.Binary.get;
                     GHC.Base.pure (Gzip_packed' _packed_data_0)};
           put to_be_encoded_1 = do Data.Binary.put to_be_encoded_1._packed_data}
data Object = Gzip_packed !Gzip_packed'
data Gzip_packed' = Gzip_packed' {_packed_data :: !Bytes'}
instance Data.Binary.Binary Object
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {812830625 -> fmap Gzip_packed Data.Binary.get}};
           put (Gzip_packed tmp_1) = do {Data.Binary.Put.putWord32le 812830625;
                                         Data.Binary.put tmp_1}}
instance Data.Binary.Binary P_q_inner_data_dc'
    where {get = do {_pq_0 <- Data.Binary.get;
                     _p_1 <- Data.Binary.get;
                     _q_2 <- Data.Binary.get;
                     _nonce_3 <- Data.Binary.get;
                     _server_nonce_4 <- Data.Binary.get;
                     _new_nonce_5 <- Data.Binary.get;
                     _dc_6 <- Data.Binary.get;
                     GHC.Base.pure (P_q_inner_data_dc' _pq_0 _p_1 _q_2 _nonce_3 _server_nonce_4 _new_nonce_5 _dc_6)};
           put to_be_encoded_7 = do {Data.Binary.put to_be_encoded_7._pq;
                                     Data.Binary.put to_be_encoded_7._p;
                                     Data.Binary.put to_be_encoded_7._q;
                                     Data.Binary.put to_be_encoded_7._nonce;
                                     Data.Binary.put to_be_encoded_7._server_nonce;
                                     Data.Binary.put to_be_encoded_7._new_nonce;
                                     Data.Binary.put to_be_encoded_7._dc}}
instance Data.Binary.Binary P_q_inner_data_temp_dc'
    where {get = do {_pq_0 <- Data.Binary.get;
                     _p_1 <- Data.Binary.get;
                     _q_2 <- Data.Binary.get;
                     _nonce_3 <- Data.Binary.get;
                     _server_nonce_4 <- Data.Binary.get;
                     _new_nonce_5 <- Data.Binary.get;
                     _dc_6 <- Data.Binary.get;
                     _expires_in_7 <- Data.Binary.get;
                     GHC.Base.pure (P_q_inner_data_temp_dc' _pq_0 _p_1 _q_2 _nonce_3 _server_nonce_4 _new_nonce_5 _dc_6 _expires_in_7)};
           put to_be_encoded_8 = do {Data.Binary.put to_be_encoded_8._pq;
                                     Data.Binary.put to_be_encoded_8._p;
                                     Data.Binary.put to_be_encoded_8._q;
                                     Data.Binary.put to_be_encoded_8._nonce;
                                     Data.Binary.put to_be_encoded_8._server_nonce;
                                     Data.Binary.put to_be_encoded_8._new_nonce;
                                     Data.Binary.put to_be_encoded_8._dc;
                                     Data.Binary.put to_be_encoded_8._expires_in}}
data P_Q_inner_data
    = P_q_inner_data_dc !P_q_inner_data_dc'
    | P_q_inner_data_temp_dc !P_q_inner_data_temp_dc'
data P_q_inner_data_dc'
    = P_q_inner_data_dc' {_pq :: !Bytes',
                          _p :: !Bytes',
                          _q :: !Bytes',
                          _nonce :: !Int128',
                          _server_nonce :: !Int128',
                          _new_nonce :: !Int256',
                          _dc :: !Int'}
data P_q_inner_data_temp_dc'
    = P_q_inner_data_temp_dc' {_pq :: !Bytes',
                               _p :: !Bytes',
                               _q :: !Bytes',
                               _nonce :: !Int128',
                               _server_nonce :: !Int128',
                               _new_nonce :: !Int256',
                               _dc :: !Int',
                               _expires_in :: !Int'}
instance Data.Binary.Binary P_Q_inner_data
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {2851430293 -> fmap P_q_inner_data_dc Data.Binary.get;
                      1459478408 -> fmap P_q_inner_data_temp_dc Data.Binary.get}};
           put (P_q_inner_data_dc tmp_1) = do {Data.Binary.Put.putWord32le 2851430293;
                                               Data.Binary.put tmp_1};
           put (P_q_inner_data_temp_dc tmp_2) = do {Data.Binary.Put.putWord32le 1459478408;
                                                    Data.Binary.put tmp_2}}
instance Data.Binary.Binary Pong'
    where {get = do {_msg_id_0 <- Data.Binary.get;
                     _ping_id_1 <- Data.Binary.get;
                     GHC.Base.pure (Pong' _msg_id_0 _ping_id_1)};
           put to_be_encoded_2 = do {Data.Binary.put to_be_encoded_2._msg_id;
                                     Data.Binary.put to_be_encoded_2._ping_id}}
data Pong = Pong !Pong'
data Pong' = Pong' {_msg_id :: !Long', _ping_id :: !Long'}
instance Data.Binary.Binary Pong
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {880243653 -> fmap Pong Data.Binary.get}};
           put (Pong tmp_1) = do {Data.Binary.Put.putWord32le 880243653;
                                  Data.Binary.put tmp_1}}
instance Data.Binary.Binary ResPQ'
    where {get = do {_nonce_0 <- Data.Binary.get;
                     _server_nonce_1 <- Data.Binary.get;
                     _pq_2 <- Data.Binary.get;
                     _server_public_key_fingerprints_3 <- Data.Binary.get;
                     GHC.Base.pure (ResPQ' _nonce_0 _server_nonce_1 _pq_2 _server_public_key_fingerprints_3)};
           put to_be_encoded_4 = do {Data.Binary.put to_be_encoded_4._nonce;
                                     Data.Binary.put to_be_encoded_4._server_nonce;
                                     Data.Binary.put to_be_encoded_4._pq;
                                     Data.Binary.put to_be_encoded_4._server_public_key_fingerprints}}
data ResPQ = ResPQ !ResPQ'
data ResPQ'
    = ResPQ' {_nonce :: !Int128',
              _server_nonce :: !Int128',
              _pq :: !Bytes',
              _server_public_key_fingerprints :: !(Vector Long')}
instance Data.Binary.Binary ResPQ
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {85337187 -> fmap ResPQ Data.Binary.get}};
           put (ResPQ tmp_1) = do {Data.Binary.Put.putWord32le 85337187;
                                   Data.Binary.put tmp_1}}
instance Data.Binary.Binary Rpc_answer_dropped'
    where {get = do {_msg_id_0 <- Data.Binary.get;
                     _seq_no_1 <- Data.Binary.get;
                     _bytes_2 <- Data.Binary.get;
                     GHC.Base.pure (Rpc_answer_dropped' _msg_id_0 _seq_no_1 _bytes_2)};
           put to_be_encoded_3 = do {Data.Binary.put to_be_encoded_3._msg_id;
                                     Data.Binary.put to_be_encoded_3._seq_no;
                                     Data.Binary.put to_be_encoded_3._bytes}}
instance Data.Binary.Binary Rpc_answer_dropped_running'
    where {get = GHC.Base.pure Rpc_answer_dropped_running';
           put to_be_encoded_0 = do GHC.Base.pure ()}
instance Data.Binary.Binary Rpc_answer_unknown'
    where {get = GHC.Base.pure Rpc_answer_unknown';
           put to_be_encoded_0 = do GHC.Base.pure ()}
data RpcDropAnswer
    = Rpc_answer_dropped !Rpc_answer_dropped'
    | Rpc_answer_dropped_running !Rpc_answer_dropped_running'
    | Rpc_answer_unknown !Rpc_answer_unknown'
data Rpc_answer_dropped'
    = Rpc_answer_dropped' {_msg_id :: !Long',
                           _seq_no :: !Int',
                           _bytes :: !Int'}
data Rpc_answer_dropped_running' = Rpc_answer_dropped_running' {}
data Rpc_answer_unknown' = Rpc_answer_unknown' {}
instance Data.Binary.Binary RpcDropAnswer
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {2755319991 -> fmap Rpc_answer_dropped Data.Binary.get;
                      3447252358 -> fmap Rpc_answer_dropped_running Data.Binary.get;
                      1579864942 -> fmap Rpc_answer_unknown Data.Binary.get}};
           put (Rpc_answer_dropped tmp_1) = do {Data.Binary.Put.putWord32le 2755319991;
                                                Data.Binary.put tmp_1};
           put (Rpc_answer_dropped_running tmp_2) = do {Data.Binary.Put.putWord32le 3447252358;
                                                        Data.Binary.put tmp_2};
           put (Rpc_answer_unknown tmp_3) = do {Data.Binary.Put.putWord32le 1579864942;
                                                Data.Binary.put tmp_3}}
instance Data.Binary.Binary Rpc_error'
    where {get = do {_error_code_0 <- Data.Binary.get;
                     _error_message_1 <- Data.Binary.get;
                     GHC.Base.pure (Rpc_error' _error_code_0 _error_message_1)};
           put to_be_encoded_2 = do {Data.Binary.put to_be_encoded_2._error_code;
                                     Data.Binary.put to_be_encoded_2._error_message}}
data RpcError = Rpc_error !Rpc_error'
data Rpc_error'
    = Rpc_error' {_error_code :: !Int', _error_message :: !String'}
instance Data.Binary.Binary RpcError
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {558156313 -> fmap Rpc_error Data.Binary.get}};
           put (Rpc_error tmp_1) = do {Data.Binary.Put.putWord32le 558156313;
                                       Data.Binary.put tmp_1}}
instance Data.Binary.Binary Rpc_result'
    where {get = do {_req_msg_id_0 <- Data.Binary.get;
                     _result_1 <- Data.Binary.get;
                     GHC.Base.pure (Rpc_result' _req_msg_id_0 _result_1)};
           put to_be_encoded_2 = do {Data.Binary.put to_be_encoded_2._req_msg_id;
                                     Data.Binary.put to_be_encoded_2._result}}
data RpcResult = Rpc_result !Rpc_result'
data Rpc_result'
    = Rpc_result' {_req_msg_id :: !Long', _result :: !Object}
instance Data.Binary.Binary RpcResult
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {4082920705 -> fmap Rpc_result Data.Binary.get}};
           put (Rpc_result tmp_1) = do {Data.Binary.Put.putWord32le 4082920705;
                                        Data.Binary.put tmp_1}}
instance Data.Binary.Binary Server_DH_params_ok'
    where {get = do {_nonce_0 <- Data.Binary.get;
                     _server_nonce_1 <- Data.Binary.get;
                     _encrypted_answer_2 <- Data.Binary.get;
                     GHC.Base.pure (Server_DH_params_ok' _nonce_0 _server_nonce_1 _encrypted_answer_2)};
           put to_be_encoded_3 = do {Data.Binary.put to_be_encoded_3._nonce;
                                     Data.Binary.put to_be_encoded_3._server_nonce;
                                     Data.Binary.put to_be_encoded_3._encrypted_answer}}
data Server_DH_Params = Server_DH_params_ok !Server_DH_params_ok'
data Server_DH_params_ok'
    = Server_DH_params_ok' {_nonce :: !Int128',
                            _server_nonce :: !Int128',
                            _encrypted_answer :: !Bytes'}
instance Data.Binary.Binary Server_DH_Params
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {3504867164 -> fmap Server_DH_params_ok Data.Binary.get}};
           put (Server_DH_params_ok tmp_1) = do {Data.Binary.Put.putWord32le 3504867164;
                                                 Data.Binary.put tmp_1}}
instance Data.Binary.Binary Server_DH_inner_data'
    where {get = do {_nonce_0 <- Data.Binary.get;
                     _server_nonce_1 <- Data.Binary.get;
                     _g_2 <- Data.Binary.get;
                     _dh_prime_3 <- Data.Binary.get;
                     _g_a_4 <- Data.Binary.get;
                     _server_time_5 <- Data.Binary.get;
                     GHC.Base.pure (Server_DH_inner_data' _nonce_0 _server_nonce_1 _g_2 _dh_prime_3 _g_a_4 _server_time_5)};
           put to_be_encoded_6 = do {Data.Binary.put to_be_encoded_6._nonce;
                                     Data.Binary.put to_be_encoded_6._server_nonce;
                                     Data.Binary.put to_be_encoded_6._g;
                                     Data.Binary.put to_be_encoded_6._dh_prime;
                                     Data.Binary.put to_be_encoded_6._g_a;
                                     Data.Binary.put to_be_encoded_6._server_time}}
data Server_DH_inner_data
    = Server_DH_inner_data !Server_DH_inner_data'
data Server_DH_inner_data'
    = Server_DH_inner_data' {_nonce :: !Int128',
                             _server_nonce :: !Int128',
                             _g :: !Int',
                             _dh_prime :: !Bytes',
                             _g_a :: !Bytes',
                             _server_time :: !Int'}
instance Data.Binary.Binary Server_DH_inner_data
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {3045658042 -> fmap Server_DH_inner_data Data.Binary.get}};
           put (Server_DH_inner_data tmp_1) = do {Data.Binary.Put.putWord32le 3045658042;
                                                  Data.Binary.put tmp_1}}
instance Data.Binary.Binary Dh_gen_fail'
    where {get = do {_nonce_0 <- Data.Binary.get;
                     _server_nonce_1 <- Data.Binary.get;
                     _new_nonce_hash3_2 <- Data.Binary.get;
                     GHC.Base.pure (Dh_gen_fail' _nonce_0 _server_nonce_1 _new_nonce_hash3_2)};
           put to_be_encoded_3 = do {Data.Binary.put to_be_encoded_3._nonce;
                                     Data.Binary.put to_be_encoded_3._server_nonce;
                                     Data.Binary.put to_be_encoded_3._new_nonce_hash3}}
instance Data.Binary.Binary Dh_gen_ok'
    where {get = do {_nonce_0 <- Data.Binary.get;
                     _server_nonce_1 <- Data.Binary.get;
                     _new_nonce_hash1_2 <- Data.Binary.get;
                     GHC.Base.pure (Dh_gen_ok' _nonce_0 _server_nonce_1 _new_nonce_hash1_2)};
           put to_be_encoded_3 = do {Data.Binary.put to_be_encoded_3._nonce;
                                     Data.Binary.put to_be_encoded_3._server_nonce;
                                     Data.Binary.put to_be_encoded_3._new_nonce_hash1}}
instance Data.Binary.Binary Dh_gen_retry'
    where {get = do {_nonce_0 <- Data.Binary.get;
                     _server_nonce_1 <- Data.Binary.get;
                     _new_nonce_hash2_2 <- Data.Binary.get;
                     GHC.Base.pure (Dh_gen_retry' _nonce_0 _server_nonce_1 _new_nonce_hash2_2)};
           put to_be_encoded_3 = do {Data.Binary.put to_be_encoded_3._nonce;
                                     Data.Binary.put to_be_encoded_3._server_nonce;
                                     Data.Binary.put to_be_encoded_3._new_nonce_hash2}}
data Set_client_DH_params_answer
    = Dh_gen_fail !Dh_gen_fail'
    | Dh_gen_ok !Dh_gen_ok'
    | Dh_gen_retry !Dh_gen_retry'
data Dh_gen_fail'
    = Dh_gen_fail' {_nonce :: !Int128',
                    _server_nonce :: !Int128',
                    _new_nonce_hash3 :: !Int128'}
data Dh_gen_ok'
    = Dh_gen_ok' {_nonce :: !Int128',
                  _server_nonce :: !Int128',
                  _new_nonce_hash1 :: !Int128'}
data Dh_gen_retry'
    = Dh_gen_retry' {_nonce :: !Int128',
                     _server_nonce :: !Int128',
                     _new_nonce_hash2 :: !Int128'}
instance Data.Binary.Binary Set_client_DH_params_answer
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {2795351554 -> fmap Dh_gen_fail Data.Binary.get;
                      1003222836 -> fmap Dh_gen_ok Data.Binary.get;
                      1188831161 -> fmap Dh_gen_retry Data.Binary.get}};
           put (Dh_gen_fail tmp_1) = do {Data.Binary.Put.putWord32le 2795351554;
                                         Data.Binary.put tmp_1};
           put (Dh_gen_ok tmp_2) = do {Data.Binary.Put.putWord32le 1003222836;
                                       Data.Binary.put tmp_2};
           put (Dh_gen_retry tmp_3) = do {Data.Binary.Put.putWord32le 1188831161;
                                          Data.Binary.put tmp_3}}
data Method'Req_pq_multi = Method'Req_pq_multi {_nonce :: !Int128'}
instance Data.Binary.Binary Method'Req_pq_multi
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {3195965169 -> do {_nonce_1 <- Data.Binary.get;
                                        GHC.Base.pure (Method'Req_pq_multi _nonce_1)}}};
           put to_be_encoded_2 = do {Data.Binary.Put.putWord32le 3195965169;
                                     Data.Binary.put to_be_encoded_2._nonce}}
instance TLFunctionʼ Method'Req_pq_multi ResPQ
data Method'Req_DH_params
    = Method'Req_DH_params {_nonce :: !Int128',
                            _server_nonce :: !Int128',
                            _p :: !Bytes',
                            _q :: !Bytes',
                            _public_key_fingerprint :: !Long',
                            _encrypted_data :: !Bytes'}
instance Data.Binary.Binary Method'Req_DH_params
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {3608339646 -> do {_nonce_1 <- Data.Binary.get;
                                        _server_nonce_2 <- Data.Binary.get;
                                        _p_3 <- Data.Binary.get;
                                        _q_4 <- Data.Binary.get;
                                        _public_key_fingerprint_5 <- Data.Binary.get;
                                        _encrypted_data_6 <- Data.Binary.get;
                                        GHC.Base.pure (Method'Req_DH_params _nonce_1 _server_nonce_2 _p_3 _q_4 _public_key_fingerprint_5 _encrypted_data_6)}}};
           put to_be_encoded_7 = do {Data.Binary.Put.putWord32le 3608339646;
                                     Data.Binary.put to_be_encoded_7._nonce;
                                     Data.Binary.put to_be_encoded_7._server_nonce;
                                     Data.Binary.put to_be_encoded_7._p;
                                     Data.Binary.put to_be_encoded_7._q;
                                     Data.Binary.put to_be_encoded_7._public_key_fingerprint;
                                     Data.Binary.put to_be_encoded_7._encrypted_data}}
instance TLFunctionʼ Method'Req_DH_params Server_DH_Params
data Method'Set_client_DH_params
    = Method'Set_client_DH_params {_nonce :: !Int128',
                                   _server_nonce :: !Int128',
                                   _encrypted_data :: !Bytes'}
instance Data.Binary.Binary Method'Set_client_DH_params
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {4110704415 -> do {_nonce_1 <- Data.Binary.get;
                                        _server_nonce_2 <- Data.Binary.get;
                                        _encrypted_data_3 <- Data.Binary.get;
                                        GHC.Base.pure (Method'Set_client_DH_params _nonce_1 _server_nonce_2 _encrypted_data_3)}}};
           put to_be_encoded_4 = do {Data.Binary.Put.putWord32le 4110704415;
                                     Data.Binary.put to_be_encoded_4._nonce;
                                     Data.Binary.put to_be_encoded_4._server_nonce;
                                     Data.Binary.put to_be_encoded_4._encrypted_data}}
instance TLFunctionʼ Method'Set_client_DH_params
                     Set_client_DH_params_answer
data Method'Rpc_drop_answer
    = Method'Rpc_drop_answer {_req_msg_id :: !Long'}
instance Data.Binary.Binary Method'Rpc_drop_answer
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {1491380032 -> do {_req_msg_id_1 <- Data.Binary.get;
                                        GHC.Base.pure (Method'Rpc_drop_answer _req_msg_id_1)}}};
           put to_be_encoded_2 = do {Data.Binary.Put.putWord32le 1491380032;
                                     Data.Binary.put to_be_encoded_2._req_msg_id}}
instance TLFunctionʼ Method'Rpc_drop_answer RpcDropAnswer
data Method'Get_future_salts
    = Method'Get_future_salts {_num :: !Int'}
instance Data.Binary.Binary Method'Get_future_salts
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {3105996036 -> do {_num_1 <- Data.Binary.get;
                                        GHC.Base.pure (Method'Get_future_salts _num_1)}}};
           put to_be_encoded_2 = do {Data.Binary.Put.putWord32le 3105996036;
                                     Data.Binary.put to_be_encoded_2._num}}
instance TLFunctionʼ Method'Get_future_salts FutureSalts
data Method'Ping = Method'Ping {_ping_id :: !Long'}
instance Data.Binary.Binary Method'Ping
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {2059302892 -> do {_ping_id_1 <- Data.Binary.get;
                                        GHC.Base.pure (Method'Ping _ping_id_1)}}};
           put to_be_encoded_2 = do {Data.Binary.Put.putWord32le 2059302892;
                                     Data.Binary.put to_be_encoded_2._ping_id}}
instance TLFunctionʼ Method'Ping Pong
data Method'Ping_delay_disconnect
    = Method'Ping_delay_disconnect {_ping_id :: !Long',
                                    _disconnect_delay :: !Int'}
instance Data.Binary.Binary Method'Ping_delay_disconnect
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {4081220492 -> do {_ping_id_1 <- Data.Binary.get;
                                        _disconnect_delay_2 <- Data.Binary.get;
                                        GHC.Base.pure (Method'Ping_delay_disconnect _ping_id_1 _disconnect_delay_2)}}};
           put to_be_encoded_3 = do {Data.Binary.Put.putWord32le 4081220492;
                                     Data.Binary.put to_be_encoded_3._ping_id;
                                     Data.Binary.put to_be_encoded_3._disconnect_delay}}
instance TLFunctionʼ Method'Ping_delay_disconnect Pong
data Method'Destroy_session
    = Method'Destroy_session {_session_id :: !Long'}
instance Data.Binary.Binary Method'Destroy_session
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {3880853798 -> do {_session_id_1 <- Data.Binary.get;
                                        GHC.Base.pure (Method'Destroy_session _session_id_1)}}};
           put to_be_encoded_2 = do {Data.Binary.Put.putWord32le 3880853798;
                                     Data.Binary.put to_be_encoded_2._session_id}}
instance TLFunctionʼ Method'Destroy_session DestroySessionRes
data Method'Destroy_auth_key = Method'Destroy_auth_key {}
instance Data.Binary.Binary Method'Destroy_auth_key
    where {get = do {tmp_0 <- Data.Binary.Get.getWord32le;
                     case tmp_0 of
                     {3510849888 -> GHC.Base.pure Method'Destroy_auth_key}};
           put to_be_encoded_1 = do {Data.Binary.Put.putWord32le 3510849888;
                                     GHC.Base.pure ()}}
instance TLFunctionʼ Method'Destroy_auth_key DestroyAuthKeyRes
