FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  dropbear \
  screen \
  curl \
  wget \
  netcat \
  sudo \
  tzdata \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/run/dropbear && \
    echo "/bin/bash" >> /etc/shells && \
    useradd -m -s /bin/bash tunnel && \
    echo "tunnel:tunnel" | chpasswd

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 22 80 443

CMD ["/start.sh"]
