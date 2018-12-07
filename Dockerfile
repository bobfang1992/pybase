FROM continuumio/miniconda:latest
ADD ./env.yml /tmp/
RUN conda env create -f=/tmp/env.yml -n pybase
