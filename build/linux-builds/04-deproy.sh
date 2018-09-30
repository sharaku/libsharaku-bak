#!/bin/sh
# ----------------------------------------------------------------------------
#
#  MIT License
#  
#  Copyright (c) 2018 Abe Takafumi
#  
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#  
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#  
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE. *
#
# ----------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# デプロイ先を用意する
# ---------------------------------------------------------------------------

cd `dirname $0`
readonly OBJ_PATH=`pwd`
readonly DEF_DEPROYPATH=${OBJ_PATH}/deproy
readonly BASE_PATH=${OBJ_PATH}/../../

rm -rf ${DEF_DEPROYPATH}
mkdir -p ${DEF_DEPROYPATH}/
mkdir -p ${DEF_DEPROYPATH}/include
mkdir -p ${DEF_DEPROYPATH}/lib
mkdir -p ${DEF_DEPROYPATH}/bin

# makeを行う
#  arg1		ビルド対象
do_copy()
{
	lib_path=$1
	cp -pR ${lib_path}/include ${DEF_DEPROYPATH}

}


# ---------------------------------------------------------------------------
# コピーする
# ---------------------------------------------------------------------------
do_copy ${BASE_PATH}/libs/container
do_copy ${BASE_PATH}/libs/atomic

#cp -pR ${BASE_PATH}/include/* ${BASE_PATH}/include/sharaku
#cp -pR ${BASE_PATH}/libs/generic/libwq.generic.linux.x86.a ${sharaku}/lib/wq
#cp -pR ${BASE_PATH}/libs/log/libwq.log.linux.x86.a ${sharaku}/lib/wq
#cp -pR ${BASE_PATH}/libs/wq/libwq.wq.linux.x86.a ${sharaku}/lib/wq
#cp -pR ${BASE_PATH}/libs/devfile/libwq.devfile.linux.x86.a ${sharaku}/lib/wq
#cp -pR ${BASE_PATH}/libs/log/tools/logvewer/logviewr ${sharaku}/bin/wq
#

