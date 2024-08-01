FROM postgres:latest

RUN --mount=type=cache,target=/root/.cache \
    apt-get update && \
    apt-get install -y perl cpanminus make gcc postgresql-server-dev-all git && \
    git clone https://github.com/theory/pgtap.git && \
    cd pgtap && \
    make && \
    make install && \
    cpanm TAP::Parser::SourceHandler::pgTAP

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
# Debugging step to list directory contents
RUN ls -l /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
