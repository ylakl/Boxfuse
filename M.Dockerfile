FROM maven:3.6.1-jdk-7-alpine AS build
WORKDIR /usr/src/app
COPY . .
RUN mvn clean package