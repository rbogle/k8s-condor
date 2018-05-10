include ../registry.mk
IMAGES=base central-manager schedd worker

build:
	( for img in $(IMAGES); do \
		docker build -t condor-$$img $$img; \
		docker tag condor-$$img  $(REGISTRY)/condor-$$img; \
		docker push $(REGISTRY)/condor-$$img; \
	  done \
	)
