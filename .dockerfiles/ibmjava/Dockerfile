FROM debian:stretch

LABEL MAINTAINER="Paulo Suderio <paulo.suderio@gmail.com>"
LABEL DESCRIPTION="Ambiente de desenvolvimento"

ARG proxy=http://localhost:3128
ARG no_proxy=localhost,127.0.0.1

ENV HTTP_PROXY=$proxy HTTPS_PROXY=$proxy NO_PROXY=$no_proxy http_proxy=$proxy https_proxy=$proxy no_proxy=$no_proxy
RUN apt-get update \
    && apt-get install -y --no-install-recommends wget ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_VERSION 1.8.0_sr5

RUN ESUM="e0154e19d283b0257598cd62543c92f886cd0e33ce570750d80c92b1c27b532e" \
    && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/" \
    && YML_FILE="sdk/linux/x86_64/index.yml" \
    && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE \
    && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r') \
    && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL \
    && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c - \
    && echo "INSTALLER_UI=silent" > /tmp/response.properties \
    && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties \
    && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties \
    && mkdir -p /opt/ibm \
    && chmod +x /tmp/ibm-java.bin \
    && /tmp/ibm-java.bin -i silent -f /tmp/response.properties \
    && rm -f /tmp/response.properties \
    && rm -f /tmp/index.yml \
    && rm -f /tmp/ibm-java.bin

ENV JAVA_HOME=/opt/ibm/java/jre \
    PATH=/opt/ibm/java/bin:$PATH
