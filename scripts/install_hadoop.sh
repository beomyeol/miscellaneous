#!/bin/bash

HADOOP_URL=http://apache.cs.utah.edu/hadoop/common/hadoop-2.7.3/hadoop-2.7.3.tar.gz
TEMP_DIR=/tmp/hadoop
HADOOP_VERSION=2.7.3
HADOOP_BINARY_ARCHIVE=hadoop-${HADOOP_VERSION}.tar.gz
HADOOP_HOME=/opt/hadoop

# install necesary package
sudo apt-get update
sudo apt-get install wget openjdk-7-jre -y

if [ ! -d $TEMP_DIR ]; then
  mkdir -p /tmp/hadoop
fi

if [ ! -e $TEMP_DIR/$HADOOP_BINARY_ARCHIVE ]; then
  # download hadoop binary archive
  if [ ! -e $HADOOP_BINARY_ARCHIVE ]; then
    wget $HADOOP_URL
  fi
  cp $HADOOP_BINARY_ARCHIVE $TEMP_DIR
fi

pushd $TEMP_DIR

tar xzf $HADOOP_BINARY_ARCHIVE
mv hadoop-$HADOOP_VERSION hadoop
sudo mv hadoop /opt

popd

# Set environment variables

#echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64" >> ~/.bashrc
#echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64" >> ~/.zshrc
#
#echo "export HADOOP_HOME=$HADOOP_HOME" >> ~/.bashrc
#echo "export HADOOP_HOME=$HADOOP_HOME" >> ~/.zshrc
#
#echo "export PATH=${HADOOP_HOME}/bin:$PATH" >> ~/.bashrc
#echo "export PATH=${HADOOP_HOME}/bin:$PATH" >> ~/.zshrc
#
#echo "export HADOOP_HDFS_HOME=$HADOOP_HOME" >> ~/.bashrc
#echo "export HADOOP_HDFS_HOME=$HADOOP_HOME" >> ~/.zshrc
