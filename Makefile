ifdef_check = $(if $(SCRIPT),,@echo "SCRIPT variable is not set or empty"; exit 1)

PORT ?= 5432
PYTHON_IMAGE ?= python_interview
JUPYTER_IMAGE ?= jupyter_interview
NETWORK_NAME ?= python_interview

# Target for stopping all running Docker containers
clean:
	docker rm -f $$(docker ps -aq)

create-network:
	docker network inspect $(NETWORK_NAME) >/dev/null 2>&1 || docker network create $(NETWORK_NAME)

pylint:
	$(call ifdef_check)
	docker run -it --rm \
	-v "${PWD}/$(SCRIPT)":/app \
	"$(PYTHON_IMAGE)" \
	pylint --rcfile=/app/.pylintrc /app

# Target for building Docker image
build-python:
	docker build --progress=plain --no-cache -t "$(PYTHON_IMAGE)" -f Dockerfile.python .

build-jupyter:
	docker build --progress=plain --no-cache -t "$(JUPYTER_IMAGE)" -f Dockerfile.jupyter .

run-python: create-network
	$(call ifdef_check)
	docker run -it --rm \
	--net $(NETWORK_NAME) \
	-v "${PWD}/data_inputs/":"/inputs" \
	-v "${PWD}/data_outputs/":"/outputs" \
	-v "${PWD}/secrets":/secrets \
	-v "${PWD}/$(SCRIPT)":/app \
	"$(PYTHON_IMAGE)"

run-jupyter:
	docker run -i -t \
	-v ${PWD}/jupyter_notebooks:/opt/notebooks \
	-v ${PWD}/data_inputs:/inputs \
	delete-pandas-image \
	delete-jupyter-image \
	delete-dangling-images
	-v ${PWD}/data_outputs:/outputs \
	-p 8888:8888 \
	"$(JUPYTER_IMAGE)" /bin/bash \
	-c "/opt/conda/bin/conda install jupyter -y --quiet && \
	/opt/conda/bin/jupyter notebook \
	--notebook-dir=/opt/notebooks --ip='*' --port=8888 \
	--no-browser --allow-root"

delete-python:
	docker images | awk '/^$$(PYTHON_IMAGE)/ {print $$3}' | xargs -I {} docker rmi {}

delete-jupyter:
	docker images | awk '/^$$(JUPYTER_IMAGE)/ {print $$3}' | xargs -I {} docker rmi {}

delete-dangling-images:
	docker images -f "dangling=true" -q | xargs -I {} docker rmi {}

.PHONY: create-network \
	pylint \
	build-python \
	build-jupyter \
	run-python \
	run-jupyter \
	delete-python \
	delete-jupyter \
	delete-dangling-images \
	clean