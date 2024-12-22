FROM postgres:16.0

RUN apt-get update &&\
    apt-get install -y curl zip

RUN curl -o /tmp/dvdrental.zip https://www.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip &&\
    unzip -d /tmp/ /tmp/dvdrental.zip