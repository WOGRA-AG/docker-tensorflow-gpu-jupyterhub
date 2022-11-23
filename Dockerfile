FROM tensorflow/tensorflow:2.11.0-gpu

RUN useradd -m jovyan
ENV HOME=/home/jovyan
WORKDIR $HOME
USER jovyan
CMD ["jupyterhub-singleuser"]

