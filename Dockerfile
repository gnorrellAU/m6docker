FROM ubuntu:latest

#build instructions
RUN apt-get update -y 
#RUN apt-get install -y git
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install openjdk-11-jre -y
#RUN git clone https://github.com/gnorrellAU/module6.git
 
WORKDIR /module6
COPY java-image-gallery-all.jar /module6/java-image-gallery-all.jar
#boot command

CMD ["java", "-jar", "java-image-gallery-all.jar"]
