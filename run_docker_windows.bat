SET IMAGE="ml"

IF DEFINED  DOCKER_TOOLBOX_INSTALL_PATH (
FOR /F "tokens=* USEBACKQ" %%a in (`"docker-machine ip default"`) DO SET JUP_IP=%%a
)

IF DEFINED  DOCKER_TOOLBOX_INSTALL_PATH (
docker run -it --name ml_ai --rm -u 1000:1000 -v "/c/Users/%username%/ml":/notebooks -w /notebooks -e HOME=/notebooks/home -p 8080:8888 %IMAGE% jupyter-notebook --NotebookApp.ip=0.0.0.0 --NotebookApp.password_required=False --NotebookApp.token='' --NotebookApp.custom_display_url=http://%JUP_IP%:8080"
) ELSE (
docker run -it --name ml_ai --rm -u 1000:1000 -v "%cd%":/notebooks -w /notebooks -e HOME=/notebooks/home -p 8080:8888 %IMAGE% jupyter-notebook --NotebookApp.ip=0.0.0.0 --NotebookApp.password_required=False --NotebookApp.token='' --NotebookApp.custom_display_url=http://localhost:8080"
)