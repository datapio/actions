FROM ghcr.io/datapio/klifter:0.2.0

USER root

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER klifter-agent

ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
