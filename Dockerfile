#FROM openjdk:18
#docker run --env-file ./config.txt -p 8070:8070 test
# docker run --network=opennetworkconnection -t userms --env-file ./config.txt -p 4001:4001 gatewayms 
#FROM maven:3.8.5-jdk-11
FROM adoptopenjdk/openjdk11:alpine-jre



COPY . /

EXPOSE 4001
#RUN ["setenv","APP_SERVICE_HOST","localhost"]
#RUN ["git","submodule","deinit","--all","-f"]
#RUN ["git","submodule","init"]
#RUN ["git", "submodule","sync"]
#RUN ["git", "submodule","update"]
#RUN ["mvn", "clean","install","-DskipTests"]
#RUN ["mvn", "clean","package","-DskipTests"]
WORKDIR /target
CMD ["java","-jar","aline-gateway-0.0.1-SNAPSHOT.jar"]
