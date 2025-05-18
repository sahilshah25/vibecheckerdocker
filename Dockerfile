FROM openjdk:23 
WORKDIR /usr/src/myapp
COPY . /usr/src/myapp/
CMD [ "java","-jar","vibecheck-backend-0.0.1-SNAPSHOT.jar" ]

EXPOSE 8282