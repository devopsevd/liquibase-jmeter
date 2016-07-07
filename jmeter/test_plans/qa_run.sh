#!/bin/bash

## Run perfs tests against QA environment
jmeter -n -t $JMETER_HOME/test_plans/v1_api/datasets_paging_qa.jmx -p $JMETER_HOME/config/user.properties -l /data/data.csv & \
jmeter -n -t $JMETER_HOME/test_plans/v2_api/datasets_paging_qa.jmx -p $JMETER_HOME/config/user.properties -l /data/data.csv & \
jmeter -n -t $JMETER_HOME/test_plans/v2_api/cloudfront_css_endpoint_test.jmx -p $JMETER_HOME/config/user.properties -J csv_data=$JMETER_HOME/config/data_qa.csv -l /data/data.csv &