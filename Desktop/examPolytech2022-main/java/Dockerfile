FROM maven:3.8-openjdk-8 as builder

WORKDIR usr/src/app


COPY . .

RUN mvn clean package -DskipTests=true


FROM openjdk:8

LABEL maintainer="GIROUX GWENAEL"

EXPOSE 8448

WORKDIR usr/src/app

COPY --from=builder usr/src/app/target/java-*.jar project.jar

CMD ["java", "-jar", "project.jar"]
