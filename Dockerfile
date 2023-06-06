FROM debian:stretch-slim

ENV LANG C.UTF-8

RUN \
  sed -E -i -e "s/(deb|security).debian.org/archive.debian.org/" -e "/stretch-updates/d" /etc/apt/sources.list && \
  apt-get update --yes && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    gsfonts libfontconfig libxrender1 libxext6

COPY bin/wkhtmltopdf-*-amd64 /usr/local/bin/wkhtmltopdf

ENTRYPOINT ["/usr/local/bin/wkhtmltopdf"]
