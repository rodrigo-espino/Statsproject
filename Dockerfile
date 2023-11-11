FROM docker.io/python:3.10.13-slim

RUN apt-get update && \
    apt upgrade -y && \
    apt -y install build-essential vim && \
    pip3 install --upgrade pip && \
    mkdir /src


RUN apt install -y curl graphviz font-manager git 

COPY requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN pip install jupyter
COPY Main_project.ipynb /src/Main_project.ipynb
COPY Datasets /src/Datasets
WORKDIR /src

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]
