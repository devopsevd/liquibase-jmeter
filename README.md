# Introduction 
This repo contains a dockerized stack for **J**meter, **E**lastic, **L**ogstash, and **K**ibana (**JELK**) for performance/stress/load testing of pages and/or APIs; Loading the results into Elastic for analysis in Kibana. 

There is a "ready to use" jmeter test plan that will run when the containers are up. The test consumes a CSV of target URLs and URIs. The test can can be run from your command line into the docker container as well. These examples can easily be modified to run against an environment of your choice for performance evaluation.

# Instructions
**This has only be run/tested on OSX**
- Clone repo
- Install docker for mac. [install](https://docs.docker.com/docker-for-mac/)

### Run full JELK stack
- In repo directory run `docker-compose up`;  Wait for build to complete.
- Run example tests.  `$ ./test_runner.sh`
- Visit `localhost:5601` (Kibana)
- Under the Settings tab create a index pattern by selecting the timeStamp field in the dropdown.
- Select 'Discover' tab,  two requests should be visable.
- When visiting the Discover tab, be sure the duration (shown in the top right corner of the page) reflects the correct date/time range of the data.

### Just run jmeter
- In repo directory run `docker-compose up jmeter`;  Wait for build to complete.
- Run example tests.  `$ ./test_runner.sh`
- Results are in the jmeter container at /data
- docker-compose exec jmeter bash
- cd /data
- vi test_results.csv


## Thanks
There were a few sources that inspired and were referenced to build out this project.
- [Jmeter integration with ELK](http://ecmarchitect.com/archives/2014/09/09/3932) 
- [Visualizing Datasets with ELK](http://blog.webkid.io/visualize-datasets-with-elk/)
- [ELK-demo](https://github.com/joppa27/ELK-demo)



