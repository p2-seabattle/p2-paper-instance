FROM codelime/p2-rcon:latest AS rcon

FROM registry.1437703-cz27429.tw1.ru:32000/p2-paper-base:latest AS final
WORKDIR /app
COPY . .
COPY --from=rcon /rcon /rcon
#ARG DEBIAN_FRONTEND=noninteractive
#RUN apt update
#RUN apt install -y libicu-dev
RUN chmod +x /app/host.sh
ENTRYPOINT [ "/app/host.sh" ]
