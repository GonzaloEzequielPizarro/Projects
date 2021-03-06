#!/usr/bin/env bash

COMMON_FOLDER_PATH='C:\Users\Gonzalo\Documents\Conda_Env'

cd $COMMON_FOLDER_PATH

conda init bash

conda remove --yes --name blend2021 --all

conda create --yes --name blend2021 python=3.8

conda install --yes --name blend2021 --file env.txt

conda install -c conda-forge --yes --name blend2021 --file env_conda-forge.txt

conda install -c plotly --yes --name blend2021 --file env_plotly.txt

conda activate blend2021

# Jupyter widgets extension
jupyter labextension install @jupyter-widgets/jupyterlab-manager

# jupyterlab renderer support
jupyter labextension install jupyterlab-plotly@4.14.1 --no-build

# FigureWidget support
jupyter labextension install plotlywidget@4.14.1 --no-build

# Build extensions (must be done to activate extensions since --no-build is used above)
jupyter lab build

set NODE_OPTIONS=

#Parches para el plotly y el nltk:

jupyter labextension install plotlywidget@4.14.1 --no-build
jupyter lab build
set NODE_OPTIONS=

pause
