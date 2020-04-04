
FROM openjdk:8
EXPOSE 8080
ADD target/pipeline.war pipelinewar
ENTRYPOINT ["java -jar","pipeline.war"]
