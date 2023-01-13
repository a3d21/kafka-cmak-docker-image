FROM openjdk:11

ARG CMAK_VERSION=3.0.0.6

RUN  mkdir -p /app && cd /app && \
        wget -O cmak.zip https://github.com/yahoo/CMAK/releases/download/3.0.0.6/cmak-$CMAK_VERSION.zip && \
        unzip cmak.zip && \
        rm cmak.zip

WORKDIR /app/cmak-$CMAK_VERSION

EXPOSE 9000
CMD ["./bin/cmak"]
