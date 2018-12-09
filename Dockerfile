FROM continuumio/miniconda:latest
ADD ./env.yml /tmp/
SHELL ["/bin/bash", "-c"]
RUN conda create --name pybase
RUN source /opt/conda/bin/activate pybase && conda install nomkl pandas ipython jupyter requests
RUN source /opt/conda/bin/activate pybase && pip install trio 
RUN source /opt/conda/bin/activate pybase && conda clean --all
