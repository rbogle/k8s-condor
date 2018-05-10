FROM  condor-base

COPY condor_config.local /etc/condor/
COPY collector /etc/condor/config.d
COPY htcondor-collector-liveness /usr/local/bin/

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
