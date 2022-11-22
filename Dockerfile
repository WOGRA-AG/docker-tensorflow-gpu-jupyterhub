FROM ludwigai/ludwig-ray-gpu:0.6.3
ENTRYPOINT []

RUN pip install jupyterhub==2.3.1 notebook==6.5.2
ENV HOME=/home/jovyan
WORKDIR $HOME
CMD ["jupyterhub-singleuser"]

