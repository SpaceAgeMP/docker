FROM steamcmd/steamcmd:ubuntu

RUN apt update && \
        apt --no-install-recommends -y install python3 python3-requests python3-yaml python3-pip git lsof && \
        rm -rf /var/cache/apt
RUN pip3 install python_a2s

RUN addgroup server --gid 1000 && \
        adduser server --disabled-password --disabled-login --uid 1000 --gid 1000 --shell /bin/false
USER server

VOLUME /home/server

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/game
ENV HOME=/home/server
ENV STARLORD_CONFIG=spaceage_gooniverse
ENTRYPOINT ["/usr/bin/python3", "/home/server/StarLord"]
