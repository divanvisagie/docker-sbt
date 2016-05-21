FROM 1science/sbt:latest
MAINTAINER visagiedivan@gmail.com

RUN sbt update

WORKDIR /src
VOLUME ["/src"]

CMD ["sbt","~test"]    

