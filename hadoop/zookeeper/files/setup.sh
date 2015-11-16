#!/bin/sh

set -e
set -x

# ./setup.sh "http://<repo_srv>/<misc_path>/zookeeper-3.4.6.tar.gz" "3.4.6"

WD=/tmp/zksetup-$$

ZK_URL=$1
ZK_VERSION=$2

mkdir -p $WD
cd $WD

wget $1

#/bin/sh

tar xzf  zookeeper-${ZK_VERSION}.tar.gz

cp zookeeper-${ZK_VERSION}/zookeeper-${ZK_VERSION}.jar /usr/share/java/zookeeper
cp zookeeper-${ZK_VERSION}/lib/*.jar /usr/share/java/zookeeper

chown zookeeper /usr/share/java/zookeeper/*.jar
chgrp zookeeper /usr/share/java/zookeeper/*.jar
chmod 0644 /usr/share/java/zookeeper/*.jar


cd ..
rm -rf $WD
