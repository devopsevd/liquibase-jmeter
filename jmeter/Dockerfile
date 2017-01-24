FROM ubuntu:15.04
FROM java:7

ENV JMETER_VERSION 3.1
ENV JMETER_HOME /usr/local/apache-jmeter-${JMETER_VERSION}
ENV PATH ${JMETER_HOME}/bin:${PATH}
ENV JMETER_LOG jmeter.log
ENV IP 127.0.0.1
ENV RMI_PORT 1099

RUN apt-get -y update && \
	apt-get -y install wget && \
	apt-get -y install vim 

RUN wget http://www.eu.apache.org/dist/jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz && \
	tar -xzf apache-jmeter-${JMETER_VERSION}.tgz -C /usr/local/

RUN rm -rf apache-jmeter-${JMETER_VERSION}.tgz \
			${JMETER_HOME}/bin/examples \
			${JMETER_HOME}/bin/templates \
			${JMETER_HOME}/bin/*.cmd \
			${JMETER_HOME}/bin/*.bat \
			${JMETER_HOME}/docs \
			${JMETER_HOME}/printable_docs && \
	apt-get -y remove wget && \
	apt-get -y --purge autoremove && \
	apt-get -y clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV PATH $PATH:$JMETER_BIN

WORKDIR $JMETER_HOME

EXPOSE $RMI_PORT

RUN touch $JMETER_HOME/$JMETER_LOG

COPY /config/ $JMETER_HOME/config
COPY /test_plans/ $JMETER_HOME/test_plans





