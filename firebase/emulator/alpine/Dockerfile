FROM dotronglong/firebase:10-alpine
RUN apk update && apk add openjdk11-jdk bash
RUN java -version
RUN firebase setup:emulators:database
RUN firebase setup:emulators:firestore
RUN firebase setup:emulators:pubsub