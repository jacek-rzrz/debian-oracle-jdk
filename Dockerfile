# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# This section is overriden in branches:
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
FROM debian:???
ENV  JDK_URL ???
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



MAINTAINER jacek@rzrz.pl

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RUN apt-get update && apt-get install -y wget

WORKDIR /opt
RUN wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" ${JDK_URL} -O jdk.tgz
RUN tar -xzf jdk.tgz && rm jdk.tgz

RUN mv $(ls -1 | grep jdk) jdk
ENV JAVA_HOME /opt/jdk

RUN ln -s ${JAVA_HOME}/bin/java /usr/bin/java
