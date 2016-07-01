#!/bin/bash
set -e
tail -f $JMETER_HOME/$JMETER_LOG

jmeter -n -t $JMETER_HOME/v1_api/datasets_paging_qa.jmx -p $JMETER_HOME/config/user.properties -l /data/data.csv && \
jmeter -n -t $JMETER_HOME/v2_api/datasets_paging_qa.jmx -p $JMETER_HOME/config/user.properties -l /data/data.csv