#!/bin/bash


docker exec -it liquibaseappperformancetest_jmeter_1 bash -c 'cd /data/; >test_results.csv'
docker exec -it liquibaseappperformancetest_jmeter_1 bash -c \
'jmeter -n -t $JMETER_HOME/test_plans/test_plan_example.jmx -p $JMETER_HOME/config/user.properties -J csv_data=$JMETER_HOME/config/example_urls.csv -l /data/test_results.csv'



