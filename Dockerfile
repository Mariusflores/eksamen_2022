FROM adoptopenjdk/openjdk8 as builder

WORKDIR /app
<<<<<<< HEAD
COPY pom.xml .
=======
COPY pom.xml
>>>>>>> 0fe58e9d0c515fdc7748f0adae496a57b9704ebc
COPY src ./src

RUN mvn package

FROM adoptopenjdk/openjdk8
COPY --from=builder /app/target/*.jar /app/application.jar
<<<<<<< HEAD
ENTRYPOINT ["java","-jar","/app/application.jar"] 
=======
ENTRYPOINT ["java","-jar","/app/application.jar"]
>>>>>>> 0fe58e9d0c515fdc7748f0adae496a57b9704ebc
