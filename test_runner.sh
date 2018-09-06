#!/bin/bash


//docker exec -it liquibase_jmeter bash -c 'cd /data/; >test_results.csv'
//docker exec -it liquibase_jmeter bash -c \

docker exec -i liquibase_jmeter bash -c 'cd /data/; >test_results.csv'
docker exec -i liquibase_jmeter bash -c \
'jmeter -n -t $JMETER_HOME/test_plans/test_plan_example.jmx -p $JMETER_HOME/config/user.properties -J csv_data=$JMETER_HOME/config/example_urls.csv -l /data/test_results.csv'



