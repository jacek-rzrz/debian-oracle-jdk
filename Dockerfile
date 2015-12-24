FROM debian:jessie

RUN apt-get update && apt-get install -y wget

WORKDIR /opt
RUN wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.tar.gz -O jdk.tgz
RUN tar -xzf jdk.tgz && rm jdk.tgz

ENV JAVA_HOME /opt/jdk1.8.0_65

RUN ln -s ${JAVA_HOME}/bin/java /usr/bin/java
