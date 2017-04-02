FROM java:8-alpine
MAINTAINER Your Name <you@example.com>

ADD target/uberjar/quantified.jar /quantified/app.jar

EXPOSE 3000

CMD ["java", "-jar", "/quantified/app.jar"]
