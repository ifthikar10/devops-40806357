FROM openjdk:25-ea-jdk
WORKDIR /app

# copy ALL compiled classes (not just /com)
COPY target/classes/ /app/classes/

# run with classpath pointing at /app/classes
ENTRYPOINT ["java", "-cp", "/app/classes", "com.napier.sem.App"]


