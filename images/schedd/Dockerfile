FROM condor-base 

COPY schedd /etc/condor/config.d/
COPY htcondor-schedd-liveness /usr/local/bin/
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
