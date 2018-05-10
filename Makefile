include registry.mk
YAMLPROTOTYPES = htcondor-central-manager-deployment.yaml.in  htcondor-worker-deployment.yaml.in 

SEDSPEC = -e "s/@REGISTRY@/$(REGISTRY)/" -e "s/@NFS_SERVER@/$(NFS_SERVER)/" \
-e "s/@NFS_SERVER_IP@/$(NFS_SERVER_IP)/" 

YAMLFILES=$(subst .in,,$(YAMLPROTOTYPES))

default: $(YAMLFILES)

$(YAMLFILES):
	/bin/sed $(SEDSPEC) $@.in > $@
clean:
	- /bin/rm $(YAMLFILES)
