#!/bin/bash

exec docker run --rm \
	-u $(id -u):$(id -g) \
	-v $PWD:/notebooks -w /notebooks \
	-e HOME=/notebooks/home -p 8081:8888 \
	ml jupyter notebook --NotebookApp.ip=0.0.0.0 --NotebookApp.password_required=False --NotebookApp.token='' --NotebookApp.custom_display_url="http://localhost:8080"
