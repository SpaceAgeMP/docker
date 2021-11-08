FROM steamcmd/steamcmd:ubuntu

RUN apt update && \
        apt --no-install-recommends -y install python3 python3-requests python3-yaml python3-pip git openssh-client lsof && \
        rm -rf /var/cache/apt
RUN pip3 install python_a2s

RUN groupadd server -g 1000 && \
        useradd server -u 1000 -g 1000 -s /bin/false
USER server

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/game
ENV HOME=/home/server
ENV STARLORD_CONFIG=spaceage_gooniverse
ENTRYPOINT ["/usr/bin/python3", "/home/server/StarLord"]
