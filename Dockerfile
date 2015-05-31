FROM java:8
MAINTAINER Mathieu Breton <mathieubre@gmail.com>

RUN apt-get update -y && apt-get install -y unzip git
RUN curl -O http://downloads.typesafe.com/typesafe-activator/1.2.12/typesafe-activator-1.2.12.zip
RUN unzip typesafe-activator-1.2.12.zip -d / && rm typesafe-activator-1.2.12.zip && chmod a+x /activator-1.2.12/activator
ENV PATH $PATH:/activator-1.2.12

EXPOSE 9000 8888
RUN mkdir /app
WORKDIR /app

RUN git clone https://github.com/mbreton/training-keeper.git /app

RUN activator clean stage

ENTRYPOINT ["target/universal/stage/bin/entrainement"]