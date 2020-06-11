FROM dotronglong/firebase:10-buster
RUN apt-get update && apt-get install -y default-jdk
RUN java -version
RUN firebase setup:emulators:database
RUN firebase setup:emulators:firestore
RUN firebase setup:emulators:pubsub