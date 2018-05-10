FROM condor-base

COPY worker /etc/condor/config.d/
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
