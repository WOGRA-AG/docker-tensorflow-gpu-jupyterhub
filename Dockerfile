FROM tensorflow/tensorflow:2.11.0-gpu
ENTRYPOINT []

RUN pip install jupyterhub==2.3.1 notebook==6.5.2
ENV HOME=/home/jovyan
WORKDIR $HOME
CMD ["jupyterhub-singleuser"]

