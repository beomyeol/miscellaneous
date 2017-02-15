#!bin/bash

HADOOP_URL=http://apache.cs.utah.edu/hadoop/common/hadoop-2.7.3/hadoop-2.7.3.tar.gz
TEMP_DIR=/tmp/hadoop

# install necesary package
sudo apt-get install wget

# download hadoop binary archive
if [ ! -e hadoop-2.7.3.tar.gz ] then
  wget $HADOOP_URL
fi

mkdir -p /tmp/hadoop
cp hadoop-2.7.3.tar.gz /tmp/hadoop

pushd /tmp/hadoop

tar xzf hadoop-2.7.3.tar.gz
mv hadoop-2.7.3 hadoop

pushd /tmp

popd