FROM debian:bullseye-slim

COPY filebeat-8.4.3-arm64.deb /tmp/
RUN dpkg -i /tmp/filebeat-8.4.3-arm64.deb ; rm /tmp/filebeat-8.4.3-arm64.deb

ENTRYPOINT ["/usr/share/filebeat/bin/filebeat", "--environment", "container", "-c", "/usr/share/filebeat/filebeat.yml"]
