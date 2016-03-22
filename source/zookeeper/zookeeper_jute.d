/**
* Licensed to the Apache Software Foundation (ASF) under one
* or more contributor license agreements.  See the NOTICE file
* distributed with this work for additional information
* regarding copyright ownership.  The ASF licenses this file
* to you under the Apache License, Version 2.0 (the
* "License"); you may not use this file except in compliance
* with the License.  You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
module zookeeper.zookeeper_jute;

import zookeeper.recordio;
//#ifndef __ZOOKEEPER_JUTE__
//#define __ZOOKEEPER_JUTE__
//#include "recordio.h"
//
//#ifdef __cplusplus
//extern "C" {
//#endif
//
extern(C):
@nogc:
nothrow:

struct Id {
    char * scheme;
    char * id;
};
int serialize_Id( oarchive * out_, const char *tag,  Id *v);
int deserialize_Id( iarchive * in_, const char *tag,  Id*v);
void deallocate_Id( Id*);
struct ACL {
    int32_t perms;
     Id id;
};
int serialize_ACL( oarchive *out__, const char *tag,  ACL *v);
int deserialize_ACL( iarchive *in__, const char *tag,  ACL*v);
void deallocate_ACL( ACL*);
struct Stat {
    int64_t czxid;
    int64_t mzxid;
    int64_t ctime;
    int64_t mtime;
    int32_t version_;
    int32_t cversion;
    int32_t aversion;
    int64_t ephemeralOwner;
    int32_t dataLength;
    int32_t numChildren;
    int64_t pzxid;
};
int serialize_Stat( oarchive *out__, const char *tag,  Stat *v);
int deserialize_Stat( iarchive *in__, const char *tag,  Stat*v);
void deallocate_Stat( Stat*);
struct StatPersisted {
    int64_t czxid;
    int64_t mzxid;
    int64_t ctime;
    int64_t mtime;
    int32_t version_;
    int32_t cversion;
    int32_t aversion;
    int64_t ephemeralOwner;
    int64_t pzxid;
};
int serialize_StatPersisted( oarchive *out__, const char *tag,  StatPersisted *v);
int deserialize_StatPersisted( iarchive *in__, const char *tag,  StatPersisted*v);
void deallocate_StatPersisted( StatPersisted*);
struct StatPersistedV1 {
    int64_t czxid;
    int64_t mzxid;
    int64_t ctime;
    int64_t mtime;
    int32_t version_;
    int32_t cversion;
    int32_t aversion;
    int64_t ephemeralOwner;
};
int serialize_StatPersistedV1( oarchive *out__, const char *tag,  StatPersistedV1 *v);
int deserialize_StatPersistedV1( iarchive *in__, const char *tag,  StatPersistedV1*v);
void deallocate_StatPersistedV1( StatPersistedV1*);


struct ConnectRequest {
    int32_t protocolVersion;
    int64_t lastZxidSeen;
    int32_t timeOut;
    int64_t sessionId;
    buffer passwd;
};
int serialize_ConnectRequest( oarchive *out__, const char *tag,  ConnectRequest *v);
int deserialize_ConnectRequest( iarchive *in__, const char *tag,  ConnectRequest*v);
void deallocate_ConnectRequest( ConnectRequest*);
struct ConnectResponse {
    int32_t protocolVersion;
    int32_t timeOut;
    int64_t sessionId;
     buffer passwd;
};
int serialize_ConnectResponse( oarchive *out__, const char *tag,  ConnectResponse *v);
int deserialize_ConnectResponse( iarchive *in__, const char *tag,  ConnectResponse*v);
void deallocate_ConnectResponse( ConnectResponse*);



struct String_vector {
    int32_t count;
    char * *data;

};
int serialize_String_vector( oarchive *out__, const char *tag,  String_vector *v);
int deserialize_String_vector( iarchive *in__, const char *tag,  String_vector *v);
int allocate_String_vector( String_vector *v, int32_t len);
int deallocate_String_vector( String_vector *v);



struct SetWatches {
    int64_t relativeZxid;
     String_vector dataWatches;
     String_vector existWatches;
     String_vector childWatches;
};
int serialize_SetWatches( oarchive *out__, const char *tag,  SetWatches *v);
int deserialize_SetWatches( iarchive *in__, const char *tag,  SetWatches*v);
void deallocate_SetWatches( SetWatches*);


struct RequestHeader {
    int32_t xid;
    int32_t type;
};
int serialize_RequestHeader( oarchive *out__, const char *tag,  RequestHeader *v);
int deserialize_RequestHeader( iarchive *in__, const char *tag,  RequestHeader*v);
void deallocate_RequestHeader( RequestHeader*);

struct MultiHeader {
    int32_t type;
    int32_t done;
    int32_t err;
};
int serialize_MultiHeader( oarchive *out__, const char *tag,  MultiHeader *v);
int deserialize_MultiHeader( iarchive *in__, const char *tag,  MultiHeader*v);
void deallocate_MultiHeader( MultiHeader*);
struct AuthPacket {
    int32_t type;
    char * scheme;
     buffer auth;
};
int serialize_AuthPacket(oarchive *out_, const char *tag,AuthPacket *v);
int deserialize_AuthPacket(iarchive *in_, const char *tag,AuthPacket*v);
void deallocate_AuthPacket(AuthPacket*);
struct ReplyHeader {
    int32_t xid;
    int64_t zxid;
    int32_t err;
};
int serialize_ReplyHeader(oarchive *out_, const char *tag,ReplyHeader *v);
int deserialize_ReplyHeader(iarchive *in_, const char *tag,ReplyHeader*v);
void deallocate_ReplyHeader(ReplyHeader*);
struct GetDataRequest {
    char * path;
    int32_t watch;
};
int serialize_GetDataRequest(oarchive *out_, const char *tag,GetDataRequest *v);
int deserialize_GetDataRequest(iarchive *in_, const char *tag,GetDataRequest*v);
void deallocate_GetDataRequest(GetDataRequest*);
struct SetDataRequest {
    char * path;
    buffer data;
    int32_t version_;
};
int serialize_SetDataRequest(oarchive *out_, const char *tag,SetDataRequest *v);
int deserialize_SetDataRequest(iarchive *in_, const char *tag,SetDataRequest*v);
void deallocate_SetDataRequest(SetDataRequest*);
struct SetDataResponse {
    Stat stat;
};
int serialize_SetDataResponse(oarchive *out_, const char *tag,SetDataResponse *v);
int deserialize_SetDataResponse(iarchive *in_, const char *tag,SetDataResponse*v);
void deallocate_SetDataResponse(SetDataResponse*);
struct GetSASLRequest {
    buffer token;
};
int serialize_GetSASLRequest(oarchive *out_, const char *tag,GetSASLRequest *v);
int deserialize_GetSASLRequest(iarchive *in_, const char *tag,GetSASLRequest*v);
void deallocate_GetSASLRequest(GetSASLRequest*);
struct SetSASLRequest {
    buffer token;
};
int serialize_SetSASLRequest(oarchive *out_, const char *tag,SetSASLRequest *v);
int deserialize_SetSASLRequest(iarchive *in_, const char *tag,SetSASLRequest*v);
void deallocate_SetSASLRequest(SetSASLRequest*);
struct SetSASLResponse {
    buffer token;
};
int serialize_SetSASLResponse(oarchive *out_, const char *tag,SetSASLResponse *v);
int deserialize_SetSASLResponse(iarchive *in_, const char *tag,SetSASLResponse*v);
void deallocate_SetSASLResponse(SetSASLResponse*);
struct ACL_vector {
    int32_t count;
    ACL *data;

};
int serialize_ACL_vector(oarchive *out_, const char *tag,ACL_vector *v);
int deserialize_ACL_vector(iarchive *in_, const char *tag,ACL_vector *v);
int allocate_ACL_vector(ACL_vector *v, int32_t len);
int deallocate_ACL_vector(ACL_vector *v);
struct CreateRequest {
    char * path;
    buffer data;
    ACL_vector acl;
    int32_t flags;
};
int serialize_CreateRequest(oarchive *out_, const char *tag,CreateRequest *v);
int deserialize_CreateRequest(iarchive *in_, const char *tag,CreateRequest*v);
void deallocate_CreateRequest(CreateRequest*);
struct DeleteRequest {
    char * path;
    int32_t version_;
};
int serialize_DeleteRequest(oarchive *out_, const char *tag,DeleteRequest *v);
int deserialize_DeleteRequest(iarchive *in_, const char *tag,DeleteRequest*v);
void deallocate_DeleteRequest(DeleteRequest*);
struct GetChildrenRequest {
    char * path;
    int32_t watch;
};
int serialize_GetChildrenRequest(oarchive *out_, const char *tag,GetChildrenRequest *v);
int deserialize_GetChildrenRequest(iarchive *in_, const char *tag,GetChildrenRequest*v);
void deallocate_GetChildrenRequest(GetChildrenRequest*);
struct GetChildren2Request {
    char * path;
    int32_t watch;
};
int serialize_GetChildren2Request(oarchive *out_, const char *tag,GetChildren2Request *v);
int deserialize_GetChildren2Request(iarchive *in_, const char *tag,GetChildren2Request*v);
void deallocate_GetChildren2Request(GetChildren2Request*);
struct CheckVersionRequest {
    char * path;
    int32_t version_;
};
int serialize_CheckVersionRequest(oarchive *out_, const char *tag,CheckVersionRequest *v);
int deserialize_CheckVersionRequest(iarchive *in_, const char *tag,CheckVersionRequest*v);
void deallocate_CheckVersionRequest(CheckVersionRequest*);
struct GetMaxChildrenRequest {
    char * path;
};
int serialize_GetMaxChildrenRequest(oarchive *out_, const char *tag,GetMaxChildrenRequest *v);
int deserialize_GetMaxChildrenRequest(iarchive *in_, const char *tag,GetMaxChildrenRequest*v);
void deallocate_GetMaxChildrenRequest(GetMaxChildrenRequest*);
struct GetMaxChildrenResponse {
    int32_t max;
};
int serialize_GetMaxChildrenResponse(oarchive *out_, const char *tag,GetMaxChildrenResponse *v);
int deserialize_GetMaxChildrenResponse(iarchive *in_, const char *tag,GetMaxChildrenResponse*v);
void deallocate_GetMaxChildrenResponse(GetMaxChildrenResponse*);
struct SetMaxChildrenRequest {
    char * path;
    int32_t max;
};
int serialize_SetMaxChildrenRequest(oarchive *out_, const char *tag,SetMaxChildrenRequest *v);
int deserialize_SetMaxChildrenRequest(iarchive *in_, const char *tag,SetMaxChildrenRequest*v);
void deallocate_SetMaxChildrenRequest(SetMaxChildrenRequest*);
struct SyncRequest {
    char * path;
};
int serialize_SyncRequest(oarchive *out_, const char *tag,SyncRequest *v);
int deserialize_SyncRequest(iarchive *in_, const char *tag,SyncRequest*v);
void deallocate_SyncRequest(SyncRequest*);
struct SyncResponse {
    char * path;
};
int serialize_SyncResponse(oarchive *out_, const char *tag,SyncResponse *v);
int deserialize_SyncResponse(iarchive *in_, const char *tag,SyncResponse*v);
void deallocate_SyncResponse(SyncResponse*);
struct GetACLRequest {
    char * path;
};
int serialize_GetACLRequest(oarchive *out_, const char *tag,GetACLRequest *v);
int deserialize_GetACLRequest(iarchive *in_, const char *tag,GetACLRequest*v);
void deallocate_GetACLRequest(GetACLRequest*);
struct SetACLRequest {
    char * path;
    ACL_vector acl;
    int32_t version_;
};
int serialize_SetACLRequest(oarchive *out_, const char *tag,SetACLRequest *v);
int deserialize_SetACLRequest(iarchive *in_, const char *tag,SetACLRequest*v);
void deallocate_SetACLRequest(SetACLRequest*);
struct SetACLResponse {
    Stat stat;
};
int serialize_SetACLResponse(oarchive *out_, const char *tag,SetACLResponse *v);
int deserialize_SetACLResponse(iarchive *in_, const char *tag,SetACLResponse*v);
void deallocate_SetACLResponse(SetACLResponse*);
struct WatcherEvent {
    int32_t type;
    int32_t state;
    char * path;
};
int serialize_WatcherEvent(oarchive *out_, const char *tag,WatcherEvent *v);
int deserialize_WatcherEvent(iarchive *in_, const char *tag,WatcherEvent*v);
void deallocate_WatcherEvent(WatcherEvent*);
struct ErrorResponse {
    int32_t err;
};
int serialize_ErrorResponse(oarchive *out_, const char *tag,ErrorResponse *v);
int deserialize_ErrorResponse(iarchive *in_, const char *tag,ErrorResponse*v);
void deallocate_ErrorResponse(ErrorResponse*);
struct CreateResponse {
    char * path;
};
int serialize_CreateResponse(oarchive *out_, const char *tag,CreateResponse *v);
int deserialize_CreateResponse(iarchive *in_, const char *tag,CreateResponse*v);
void deallocate_CreateResponse(CreateResponse*);
struct ExistsRequest {
    char * path;
    int32_t watch;
};
int serialize_ExistsRequest(oarchive *out_, const char *tag,ExistsRequest *v);
int deserialize_ExistsRequest(iarchive *in_, const char *tag,ExistsRequest*v);
void deallocate_ExistsRequest(ExistsRequest*);
struct ExistsResponse {
    Stat stat;
};
int serialize_ExistsResponse(oarchive *out_, const char *tag,ExistsResponse *v);
int deserialize_ExistsResponse(iarchive *in_, const char *tag,ExistsResponse*v);
void deallocate_ExistsResponse(ExistsResponse*);
struct GetDataResponse {
    buffer data;
    Stat stat;
};
int serialize_GetDataResponse(oarchive *out_, const char *tag,GetDataResponse *v);
int deserialize_GetDataResponse(iarchive *in_, const char *tag,GetDataResponse*v);
void deallocate_GetDataResponse(GetDataResponse*);
struct GetChildrenResponse {
    String_vector children;
};
int serialize_GetChildrenResponse(oarchive *out_, const char *tag,GetChildrenResponse *v);
int deserialize_GetChildrenResponse(iarchive *in_, const char *tag,GetChildrenResponse*v);
void deallocate_GetChildrenResponse(GetChildrenResponse*);
struct GetChildren2Response {
    String_vector children;
    Stat stat;
};
int serialize_GetChildren2Response(oarchive *out_, const char *tag,GetChildren2Response *v);
int deserialize_GetChildren2Response(iarchive *in_, const char *tag,GetChildren2Response*v);
void deallocate_GetChildren2Response(GetChildren2Response*);
struct GetACLResponse {
    ACL_vector acl;
    Stat stat;
};
int serialize_GetACLResponse(oarchive *out_, const char *tag,GetACLResponse *v);
int deserialize_GetACLResponse(iarchive *in_, const char *tag,GetACLResponse*v);
void deallocate_GetACLResponse(GetACLResponse*);
struct LearnerInfo {
    int64_t serverid;
    int32_t protocolVersion;
};
int serialize_LearnerInfo(oarchive *out_, const char *tag,LearnerInfo *v);
int deserialize_LearnerInfo(iarchive *in_, const char *tag,LearnerInfo*v);
void deallocate_LearnerInfo(LearnerInfo*);
struct Id_vector {
    int32_t count;
    Id *data;

};
int serialize_Id_vector(oarchive *out_, const char *tag,Id_vector *v);
int deserialize_Id_vector(iarchive *in_, const char *tag,Id_vector *v);
int allocate_Id_vector(Id_vector *v, int32_t len);
int deallocate_Id_vector(Id_vector *v);
struct QuorumPacket {
    int32_t type;
    int64_t zxid;
    buffer data;
    Id_vector authinfo;
};
int serialize_QuorumPacket(oarchive *out_, const char *tag,QuorumPacket *v);
int deserialize_QuorumPacket(iarchive *in_, const char *tag,QuorumPacket*v);
void deallocate_QuorumPacket(QuorumPacket*);
struct FileHeader {
    int32_t magic;
    int32_t version_;
    int64_t dbid;
};
int serialize_FileHeader(oarchive *out_, const char *tag,FileHeader *v);
int deserialize_FileHeader(iarchive *in_, const char *tag,FileHeader*v);
void deallocate_FileHeader(FileHeader*);
struct TxnHeader {
    int64_t clientId;
    int32_t cxid;
    int64_t zxid;
    int64_t time;
    int32_t type;
};
int serialize_TxnHeader(oarchive *out_, const char *tag,TxnHeader *v);
int deserialize_TxnHeader(iarchive *in_, const char *tag,TxnHeader*v);
void deallocate_TxnHeader(TxnHeader*);
struct CreateTxnV0 {
    char * path;
    buffer data;
    ACL_vector acl;
    int32_t ephemeral;
};
int serialize_CreateTxnV0(oarchive *out_, const char *tag,CreateTxnV0 *v);
int deserialize_CreateTxnV0(iarchive *in_, const char *tag,CreateTxnV0*v);
void deallocate_CreateTxnV0(CreateTxnV0*);
struct CreateTxn {
    char * path;
    buffer data;
    ACL_vector acl;
    int32_t ephemeral;
    int32_t parentCVersion;
};
int serialize_CreateTxn(oarchive *out_, const char *tag,CreateTxn *v);
int deserialize_CreateTxn(iarchive *in_, const char *tag,CreateTxn*v);
void deallocate_CreateTxn(CreateTxn*);
struct DeleteTxn {
    char * path;
};
int serialize_DeleteTxn(oarchive *out_, const char *tag,DeleteTxn *v);
int deserialize_DeleteTxn(iarchive *in_, const char *tag,DeleteTxn*v);
void deallocate_DeleteTxn(DeleteTxn*);
struct SetDataTxn {
    char * path;
    buffer data;
    int32_t version_;
};
int serialize_SetDataTxn(oarchive *out_, const char *tag,SetDataTxn *v);
int deserialize_SetDataTxn(iarchive *in_, const char *tag,SetDataTxn*v);
void deallocate_SetDataTxn(SetDataTxn*);
struct CheckVersionTxn {
    char * path;
    int32_t version_;
};
int serialize_CheckVersionTxn(oarchive *out_, const char *tag,CheckVersionTxn *v);
int deserialize_CheckVersionTxn(iarchive *in_, const char *tag,CheckVersionTxn*v);
void deallocate_CheckVersionTxn(CheckVersionTxn*);
struct SetACLTxn {
    char * path;
    ACL_vector acl;
    int32_t version_;
};
int serialize_SetACLTxn(oarchive *out_, const char *tag,SetACLTxn *v);
int deserialize_SetACLTxn(iarchive *in_, const char *tag,SetACLTxn*v);
void deallocate_SetACLTxn(SetACLTxn*);
struct SetMaxChildrenTxn {
    char * path;
    int32_t max;
};
int serialize_SetMaxChildrenTxn(oarchive *out_, const char *tag,SetMaxChildrenTxn *v);
int deserialize_SetMaxChildrenTxn(iarchive *in_, const char *tag,SetMaxChildrenTxn*v);
void deallocate_SetMaxChildrenTxn(SetMaxChildrenTxn*);
struct CreateSessionTxn {
    int32_t timeOut;
};
int serialize_CreateSessionTxn(oarchive *out_, const char *tag,CreateSessionTxn *v);
int deserialize_CreateSessionTxn(iarchive *in_, const char *tag,CreateSessionTxn*v);
void deallocate_CreateSessionTxn(CreateSessionTxn*);
struct ErrorTxn {
    int32_t err;
};
int serialize_ErrorTxn(oarchive *out_, const char *tag,ErrorTxn *v);
int deserialize_ErrorTxn(iarchive *in_, const char *tag,ErrorTxn*v);
void deallocate_ErrorTxn(ErrorTxn*);
struct Txn {
    int32_t type;
    buffer data;
};
int serialize_Txn(oarchive *out_, const char *tag,Txn *v);
int deserialize_Txn(iarchive *in_, const char *tag,Txn*v);
void deallocate_Txn(Txn*);
struct Txn_vector {
    int32_t count;
    Txn *data;

};
int serialize_Txn_vector(oarchive *out_, const char *tag,Txn_vector *v);
int deserialize_Txn_vector(iarchive *in_, const char *tag,Txn_vector *v);
int allocate_Txn_vector(Txn_vector *v, int32_t len);
int deallocate_Txn_vector(Txn_vector *v);
struct MultiTxn {
    Txn_vector txns;
};
int serialize_MultiTxn(oarchive *out_, const char *tag,MultiTxn *v);
int deserialize_MultiTxn(iarchive *in_, const char *tag,MultiTxn*v);
void deallocate_MultiTxn(MultiTxn*);
