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
//#ifndef __RECORDIO_H__
//#define __RECORDIO_H__
module zookeeper.recordio;
public import core.stdc.inttypes;
public import core.sys.posix.sys.types;
//#include <sys/types.h>
//#ifndef WIN32
//#define STRUCT_INITIALIZER(l,r) .l = r
//#else
//#define STRUCT_INITIALIZER(l,r)  r
//#include "winconfig.h"
//#endif
//
//#ifdef __cplusplus
//extern "C" {
//#endif

struct buffer {
	int32_t len;
	char *buff;
};

void deallocate_String(char **s);
void deallocate_Buffer(buffer *b);
void deallocate_vector(void *d);
struct iarchive {
	int function ( iarchive *ia, const char *tag) start_record;
	int function( iarchive *ia, const char *tag)   end_record;
	int function( iarchive *ia, const char *tag, int32_t *count) start_vector;
	int function( iarchive *ia, const char *tag) end_vector;
	int function( iarchive *ia, const char *name, int32_t *) deserialize_Bool;
	int function( iarchive *ia, const char *name, int32_t *) deserialize_Int;
	int function( iarchive *ia, const char *name, int64_t *) deserialize_Long;
	int function( iarchive *ia, const char *name, buffer *) deserialize_Buffer;
	int function( iarchive *ia, const char *name, char **) deserialize_String;
	void *priv;
};
struct oarchive {
	int function( oarchive *oa, const char *tag) start_record;
	int function( oarchive *oa, const char *tag) end_record;
	int function( oarchive *oa, const char *tag, const int32_t *count) start_vector;
	int function( oarchive *oa, const char *tag) end_vector;
	int function( oarchive *oa, const char *name, const int32_t *) serialize_Bool;
	int function( oarchive *oa, const char *name, const int32_t *) serialize_Int;
	int function( oarchive *oa, const char *name,
		const int64_t *) serialize_Long;
	int function( oarchive *oa, const char *name,
		const  buffer *) serialize_Buffer;
	int function( oarchive *oa, const char *name, char **) serialize_String;
	void *priv;
};

oarchive *create_buffer_oarchive();
void close_buffer_oarchive( oarchive **oa, int free_buffer);
iarchive *create_buffer_iarchive(char *buffer, int len);
void close_buffer_iarchive( iarchive **ia);
char *get_buffer( oarchive *);
int get_buffer_len( oarchive *);

int64_t zoo_htonll(int64_t v);
