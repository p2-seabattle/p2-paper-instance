FROM codelime/p2-rcon:latest AS rcon

FROM codelime/p2-paper-base:alpine AS final
WORKDIR /app
COPY . .
COPY --from=rcon /rcon /rcon
#ARG DEBIAN_FRONTEND=noninteractive
#RUN apt update
#RUN apt install -y libicu-dev
ENTRYPOINT [ "/usr/bin/bash", "/app/host.sh" ]