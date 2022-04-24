#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src src
COPY pom.xml /
COPY start.sh start.sh

RUN mvn clean install

EXPOSE 8080

ENTRYPOINT ["sh","start.sh"]