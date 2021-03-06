FROM openjdk:8-jre-alpine

COPY ./build/libs/kchat.jar /root/kchat.jar

WORKDIR /root

CMD ["java", "-server", "-Xms4g", "-Xmx4g", "-XX:+UseG1GC", "-XX:MaxGCPauseMillis=100", "-XX:+UseStringDeduplication", "-jar", "kchat.jar"]
