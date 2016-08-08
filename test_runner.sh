#!/bin/bash

docker exec -it jelk_jmeter_1 bash -c \
'jmeter -n -t $JMETER_HOME/test_plans/test_plan_example.jmx -p $JMETER_HOME/config/user.properties -J csv_data=$JMETER_HOME/config/test_data_example.csv -l /data/test_result.csv'



