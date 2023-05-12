FROM debian:bullseye-slim

COPY filebeat-8.7.1-*64.deb /tmp/

RUN dpkg -i /tmp/filebeat-8.7.1-*64.deb || true; rm /tmp/filebeat-8.7.1-*64.deb || true

ENTRYPOINT ["/usr/share/filebeat/bin/filebeat", "--environment", "container", "-c", "/usr/share/filebeat/filebeat.yml"]
