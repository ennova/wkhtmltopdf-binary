FROM debian:stretch-slim

ENV LANG C.UTF-8

RUN \
  apt-get update --yes && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    gsfonts libfontconfig libxrender1 libxext6

COPY bin/wkhtmltopdf-*-amd64 /usr/local/bin/wkhtmltopdf

ENTRYPOINT ["/usr/local/bin/wkhtmltopdf"]
