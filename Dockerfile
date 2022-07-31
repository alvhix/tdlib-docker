FROM alpine
WORKDIR /tdlib
RUN apk update && \
    apk upgrade
RUN apk add --update alpine-sdk linux-headers git zlib-dev openssl-dev gperf php cmake    
RUN git clone https://github.com/tdlib/td.git && \
    cd td && \
    rm -rf build && \
    mkdir build && \
    cd build && \
    cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr/local .. && \
    cmake --build . --target install && \
    cd .. && \
    cd .. && \
    ls -l /usr/local
RUN tar -czvf build.tar.gz /usr/local
CMD ["/bin/sh"]