FROM java:latest

RUN \
    echo "===> Add bintray repository..." && \
    echo "deb http://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 642AC823 && \
    apt-get update && \
    \
    \
    echo "===> Install SBT" && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes sbt fakeroot && \
    \
    \
    echo "===> Clean up" && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN sbt update
