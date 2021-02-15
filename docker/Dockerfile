FROM ubuntu:18.04

RUN apt-get update && \
  apt-get install -y apt-utils && \
  echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
  apt-get install -y software-properties-common && \
  apt-get update && \
  apt-get install -y --no-install-recommends build-essential pandoc python3 python3-dev python3-pip python3-venv git curl gcc g++ make cmake graphviz apt-utils

RUN curl -sL https://deb.nodesource.com/setup_10.x -o setup_10.x && \
    chmod +x setup_10.x && ./setup_10.x && rm -rf ./setup_10.x && apt-get install -y nodejs

# update pip
RUN python3 -m pip install pip setuptools --upgrade && \
    python3 -m pip install wheel && \
    python3 -m pip install --upgrade numpy scipy matplotlib scikit-learn pandas seaborn plotly jupyter ipywidgets statsmodels notebook pillow tensorflow && \
    python3 -m pip install --upgrade jupyterlab requests beautifulsoup4 nest_asyncio aiohttp websockets pycrypto

# Jupyter configs
RUN python3 -m pip install RISE && \
    jupyter-nbextension install rise --py && \
    jupyter-nbextension enable widgetsnbextension --py && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager

EXPOSE 8888
