#!/bin/sh

set -e
set -x

# ./setup.sh "http://<repo_srv/<misc_path>/kafka_2.10-0.8.2.1.tgz" "2.10-0.8.2.1"

WD=/tmp/kafkasetup-$$

KAFKA_URL=$1
KAFKA_VERSION=$2

mkdir -p $WD
cd $WD

wget $KAFKA_URL

tar xzf  kafka_${KAFKA_VERSION}.tgz

cp kafka_${KAFKA_VERSION}/libs/*.jar /usr/share/java/kafka
rm -f /usr/share/java/kafka/*-javadoc.jar
rm -f /usr/share/java/kafka/*-scaladoc.jar
rm -f /usr/share/java/kafka/*-sources.jar

chown kafka /usr/share/java/kafka/*.jar
chgrp kafka /usr/share/java/kafka/*.jar
chmod 0644 /usr/share/java/kafka/*.jar


cp kafka_${KAFKA_VERSION}/bin/kafka-*.sh /usr/bin
chown root /usr/bin/kafka-*.sh
chgrp root /usr/bin/kafka-*.sh
chmod 0755 /usr/bin/kafka-*.sh

cd ..
rm -rf $WD
