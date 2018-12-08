FROM continuumio/miniconda:latest
ADD ./env.yml /tmp/
RUN conda env create -f=/tmp/env.yml -n pybase
SHELL ["/bin/bash", "-c"]
RUN source /opt/conda/bin/activate pybase && conda env list && pip install trio
