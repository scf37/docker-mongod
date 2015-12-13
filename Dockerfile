FROM scf37/base

RUN cd /opt && \
    wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1404-3.2.0.tgz && \
    tar xfz mongodb-linux-x86_64-ubuntu1404-3.2.0.tgz && \
    rm mongodb-linux-x86_64-ubuntu1404-3.2.0.tgz

WORKDIR /opt/mongodb-linux-x86_64-ubuntu1404-3.2.0

ENV PATH /opt/mongodb-linux-x86_64-ubuntu1404-3.2.0/bin:$PATH

COPY start.sh /start.sh

CMD ["--bind_ip", "localhost"]

ENTRYPOINT ["/start.sh", "--dbpath", "/data/data", "--logpath", "/data/logs/mongod.log"]

    