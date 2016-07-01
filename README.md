# jelk stack
Dockerized instance of Jmeter, Elastic, Logstash, and Kibana for load/performance testing web applications

It's based on a couple of blog post and another repo:
[JELK](http://ecmarchitect.com/archives/2014/09/09/3932) 
[Visualizing Datasets with ELK] (http://blog.webkid.io/visualize-datasets-with-elk/)
[ELK-demo](https://github.com/joppa27/ELK-demo)


## PRE-REQS
**docker for mac beta**
[macker install](https://docs.docker.com/docker-for-mac/)

OR

**docker & docker-compose**
If you're running Windows/OSX install [docker toolbox](https://www.docker.com/docker-toolbox)
  
## Standup stack

open the terminal, navigate to the project root directory & type

`docker-compose up`

Once all the containers have started you can find kibana at localhost or docker-machine ip depending on your docker install:

macker `localhost:5601`
or
docker-machine `http://192.168.99.100:5601`

enjoy!
