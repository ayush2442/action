FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . .

RUN ./gradlew build --no-daemon

CMD ["java", "-jar", "build/libs/action-0.0.1-SNAPSHOT.jar"]

//Fixing the naming convention after deleting it from remote