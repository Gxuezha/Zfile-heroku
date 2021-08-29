FROM openjdk:8-jdk-buster

RUN apt-get update \
    && apt-get install wget curl unzip zip -y

RUN wget -qO zfile.war https://github.com/zhaojun1998/zfile/releases/download/3.1/zfile-3.1.war

#RUN cp /run.sh /root/zfile/run.sh
RUN unzip zfile.war -d /root/zfile
RUN chmod 775 -r /root/zfile \
    && chmod 775 /root/zfile/run.sh

CMD /run.sh
