FROM fass/payara
LABEL maintainer=fass
ENV http_proxy http://web-proxy.esg-gmbh.de:3128
ENV https_proxy http://web-proxy.esg-gmbh.de:3128
# For more information about ping see: https://github.com/AdamBien/ping/
COPY ping.war ${DEPLOYMENT_DIR}
HEALTHCHECK --interval=15s CMD curl --fail http://localhost:8080/ping/resources/pings/echo/+ || exit 1