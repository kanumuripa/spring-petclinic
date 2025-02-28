FROM eclipse-temurin:17-jdk-jammy
 
WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve

COPY src ./src

#CMD ["./mvnw", "-Dspring.profiles.active=mysql", "spring-boot:run"]
CMD ["./mvnw", "-Dspring-boot.run.profiles=mysql", "spring-boot:run"]