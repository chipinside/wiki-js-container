FROM ghcr.io/requarks/wiki:2.5

COPY ./custom-entrypoint.sh /usr/local/bin/custom-entrypoint.sh
ENTRYPOINT ["custom-entrypoint.sh"]
CMD ["node", "server"]

