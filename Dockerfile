FROM ubuntu:20.04

RUN apt-get update && apt-get install -y dropbear screen curl wget netcat &&     mkdir -p /var/run/dropbear &&     echo "/bin/bash" >> /etc/shells &&     useradd -m -s /bin/bash tunnel && echo "tunnel:tunnel" | chpasswd

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 22 81 443 80 8080 8880 2086 2096

CMD ["/start.sh"]