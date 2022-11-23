FROM tensorflow/tensorflow:2.11.0-gpu
RUN pip install jupyterhub==2.3.1 notebook==6.5.2
RUN apt-get update && apt-get install -y --no-install-recommends git

RUN useradd -m jovyan
ENV HOME=/home/jovyan
WORKDIR $HOME
USER jovyan
CMD ["jupyterhub-singleuser"]

