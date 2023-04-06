FROM codelime/p2-paper-base:latest AS paper_base
WORKDIR /app
COPY . .
ENTRYPOINT [ "/usr/bin/bash", "/app/host.sh" ]