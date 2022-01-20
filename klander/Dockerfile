FROM ghcr.io/datapio/klander:0.2.0

USER root

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER klander

ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
