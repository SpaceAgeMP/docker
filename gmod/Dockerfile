FROM steamcmd/steamcmd:alpine

RUN apk add --no-cache python3 py3-requests py3-yaml py3-pip
RUN pip3 install python_a2s

RUN adduser server -D -u 1000 -g 1000 -s /bin/false
USER server

VOLUME /home/server

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/game
ENV HOME=/home/server
ENV STARLORD_CONFIG=spaceage_gooniverse
ENTRYPOINT ["/usr/bin/python3", "/home/server/StarLord"]
