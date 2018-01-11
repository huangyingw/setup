FROM nvidia/cuda:9.1-cudnn7-devel-ubuntu16.04
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

COPY ./installer/Anaconda3-5.0.1-Linux-x86_64.sh /root/setup/installer/
COPY ./environment.yml /root/setup/
COPY ./entrypoint.sh /entrypoint.sh

WORKDIR /root/setup/

RUN bash "./installer/Anaconda3-5.0.1-Linux-x86_64.sh" -u -b
RUN apt-get update && apt-get install -y python3-pip python-dev build-essential
RUN pip3 install --upgrade pip3
RUN pip3 install --upgrade virtualenv
RUN /bin/bash -c "source install_fastai.sh"
RUN export CUDA_HOME=/usr/local/cuda
RUN export PATH="/root/anaconda3/bin:$PATH"
RUN export PATH="/usr/local/bin:/opt/local/sbin:$PATH"
RUN conda env update
RUN source activate fastai
COPY ./.jupyter/jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
COPY ./.jupyter/jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json
COPY ./.jupyter/custom/custom.js /root/.jupyter/custom/custom.js
