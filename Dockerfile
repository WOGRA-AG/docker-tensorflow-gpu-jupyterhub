FROM tensorflow/tensorflow:nightly-gpu-jupyter

RUN pip install jupyterhub==2.3.1 notebook==6.5.2
ENV HOME=/home/jovyan
WORKDIR $HOME
CMD ["jupyterhub-singleuser"]

