# Введение в машинное обучение

В этом репозитории представлены материалы лекций по машинному обучению.


## Необходимые пакеты

Лекции используют Python 3.6 и пакеты

*  numpy
*  scipy
*  pandas
*  seaborn
*  plotly
*  matplotlib
*  notebook
*  sklearn


## Установка

Установить все необходимые пакеты можно через Anaconda (рекомендуется под Windows), pip или Docker.

### Anaconda

С сайта https://www.anaconda.com/ скачать установочный файл и следовать инструкциям. Далее установить Jupyter-Notebook, NumPY и Pandas (минимальный набор, полный есть в enviroment.yml).

### Pip

Данный вариант подходит для Linux'a и Windows (если установлен Visual C++). Для этого достаточно выполнить команду
```
python -m pip install numpy scipy pandas matplotlib notebook
```

Запустить Jupyter после этого можно будет командой
```
jupyter-notebook
```

### Docker

Для упрощения установки, имеется подготовленный Dockerfile в директории docker.
Для сборки образа достаточно команды, выполненной в корневой директории этого репозитория
```
docker build --rm -t ml .
```

После этого запуск Jupyter'a выполняется следующими командами из директории с данным репозиторием

*  Windows
```
run_docker_windows.bat
```
Для Docker Toolbox это нужно делать из *Docker Quickstart Terminal*, предварительно разместив все тетрадки в "C:/Users/%username%/ml"

*  Linux
```
run_docker_linux.sh
```


### Binder

Также можно воспользоваться сервисом Binder (крайний случай).В этом случае все ваши наработки не будут сохранятся.
Для запуска контейнера достаточно нажать на изображение ниже:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/spam-izra/ml2021p/main)
