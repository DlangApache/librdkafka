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
module zookeeper.proto;
extern(C):

enum ZOO_NOTIFY_OP = 0;
enum ZOO_CREATE_OP = 1;
enum ZOO_DELETE_OP = 2;
enum ZOO_EXISTS_OP = 3;
enum ZOO_GETDATA_OP = 4;
enum ZOO_SETDATA_OP = 5;
enum ZOO_GETACL_OP = 6;
enum ZOO_SETACL_OP = 7;
enum ZOO_GETCHILDREN_OP = 8;
enum ZOO_SYNC_OP = 9;
enum ZOO_PING_OP = 11;
enum ZOO_GETCHILDREN2_OP = 12;
enum ZOO_CHECK_OP = 13;
enum ZOO_MULTI_OP = 14;
enum ZOO_CLOSE_OP = -11;
enum ZOO_SETAUTH_OP = 100;
enum ZOO_SETWATCHES_OP = 101;

