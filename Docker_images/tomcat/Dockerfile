FROM openjdk:8-jdk

LABEL maintainer="Saravjeet Singh <www.saravjeetofficial@gmail.com>"

# Set the environment variables
ENV JAVA_HEAP_SIZE=512
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# Install Tomcat 9
RUN apt-get update && \
    apt-get -y install tomcat9 && \
    rm -rf /var/lib/apt/lists/*

# Modify Tomcat environment configuration
RUN sed -i "s|#JAVA_HOME=.*|JAVA_HOME=$JAVA_HOME|g" /etc/default/tomcat9
RUN sed -i "s|-Xmx128m|-Xmx${JAVA_HEAP_SIZE}m|g" /etc/default/tomcat9
