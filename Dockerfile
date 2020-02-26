FROM openjdk:8
LABEL maintainer="nguyenvungoctung@gmail.com"

# expected database and web based app port
EXPOSE 3306
EXPOSE 8080

#RUN export APP_NAME=jwt-auth-service-1.0.0.jar
#RUN export APP_DIR=/usr/app/spring-boot-jwt-auth-service
WORKDIR /usr/app/spring-boot-jwt-auth-service
ADD target/jwt-auth-service-1.0.0.jar jwt-auth-service-1.0.0.jar

CMD java -jar jwt-auth-service-1.0.0.jar
