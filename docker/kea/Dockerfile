FROM debian:13

RUN apt-get update && apt-get install -y \
    procps \
    iproute2 \
    iputils-ping \
    dnsutils \
    tcpdump \
    rsyslog \
    kea-admin \
    kea-dhcp4-server \
    kea-dhcp-ddns-server \
    && rm -rf /var/lib/apt/lists/*

COPY kea-dhcp4.conf.json /etc/kea/kea-dhcp4.conf
COPY entrypoint.sh /entrypoint.sh

RUN chmod a+x /entrypoint.sh

RUN mkdir -p /run/kea /var/run/kea /var/lib/kea && \
    touch /var/lib/kea/kea-leases4.csv && \
    chmod -R 777 /run/kea /var/run/kea /var/lib/kea


RUN sed -i 's/^\s*module(load="imklog")/#module(load="imklog")/' /etc/rsyslog.conf

CMD ["/entrypoint.sh"]
