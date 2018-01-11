FROM nvidia/cuda:9.1-cudnn7-devel-ubuntu16.04
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

COPY ./installer/Anaconda3-5.0.1-Linux-x86_64.sh /root/setup/installer/
COPY ./environment.yml /root/setup/
COPY ./entrypoint.sh /entrypoint.sh

WORKDIR /root/setup/

RUN bash "./installer/Anaconda3-5.0.1-Linux-x86_64.sh" -u -b
RUN apt-get update && apt-get install -y python3-pip git
ENV CUDA_HOME=/usr/local/cuda
ENV PATH="/root/anaconda3/bin:$PATH"
ENV PATH="/usr/local/bin:/opt/local/sbin:$PATH"
RUN conda env update
RUN source activate fastai
RUN rm -fr /root/setup/ 
