# Introduction 
This repo contains a dockerize stack for **J**meter, **E**lastic, **L**ogstash, and **K**ibana (**JELK**) for performance testing the Open Data API; Loading the results into Elastic for analysis in Kibana.


# Instructions/Requirements/Disclaimer
**This has only be run/tested on OSX**
- clone repo
- Install docker for mac, [install](https://docs.docker.com/docker-for-mac/)
- In repo directory run `docker-compose up`;  Wait for build to complete and tests to run
- Visit `localhost:5601` (Kibana)
- Under the Settings tab create a index pattern by selecting the timeStamp field in the dropdown.

## Thanks
There were a few sources that inspired and were referenced to build out this project.
- [Jmeter integration with ELK](http://ecmarchitect.com/archives/2014/09/09/3932) 
- [Visualizing Datasets with ELK](http://blog.webkid.io/visualize-datasets-with-elk/)
- [ELK-demo](https://github.com/joppa27/ELK-demo)

## Gotchas
 - When visiting the Discover tab, be sure the duration (shown in the top right corner of the page) reflects the correct date/time range of the data.

