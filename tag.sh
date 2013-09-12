#!/bin/bash

TMP_FILE=`tempfile`

BUILD_NUMBER=$1

if [ -z ${BUILD_NUMBER} ]; then
    BUILD_NUMBER=`date +%g.%m.%d |cut -c 2-`
    BUILD_NUMBER=${BUILD_NUMBER//0/}
fi

echo BUILD_NUMBER=${BUILD_NUMBER} >> ${TMP_FILE}

cd ..
for i in android build miui onex exm tools
do
  cd $i
  HASH=`git log -1 --pretty=%H`
  echo $i: ${HASH} >> $TMP_FILE
  cd ..
done

cd exm
git commit --allow-empty -F ${TMP_FILE}
rm ${TMP_FILE}

git log -1
git push
