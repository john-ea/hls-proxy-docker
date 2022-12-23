FROM alpine:3.15

ARG VERSION=8.4.8
ARG ADDR=127.0.0.1
ARG PORT=8080

LABEL hls-version=${VERSION}

WORKDIR /opt/hlsp

RUN \
wget https://www.hls-proxy.com/downloads/${VERSION}/hls-proxy-${VERSION}.alpine-x64.zip && \
unzip hls-proxy-${VERSION}.alpine-x64.zip && \
rm -rf hls-proxy-${VERSION}.alpine-x64.zip && \
chmod +x /opt/hlsp/hls-proxy && \
mkdir -p config && \
cp default.json groups.json config/ && \
cp -r plugins/ config/plugins && \
/opt/hlsp/hls-proxy -config-path /opt/hlsp/config -address ${ADDR} -port ${PORT} -save -quit

VOLUME [ "/opt/hlsp/config" ]

EXPOSE ${PORT}

ENTRYPOINT [ "/opt/hlsp/hls-proxy", "-config-path", "/opt/hlsp/config" ]
