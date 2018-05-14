FROM nvidia/cuda:9.1-cudnn7-devel-ubuntu16.04

COPY ./install_anaconda3.sh /root/setup/
COPY ./install_fastai.sh /root/setup/
COPY ./environment.yml /root/setup/
COPY ./entrypoint.sh /entrypoint.sh

WORKDIR /root/setup/
RUN apt-get update && apt-get install -y python3-pip git realpath curl
RUN ./install_anaconda3.sh
ENV CUDA_HOME=/usr/local/cuda
ENV PATH="/root/anaconda3/bin:$PATH"
ENV PATH="/usr/local/bin:/opt/local/sbin:$PATH"
RUN ./install_fastai.sh
RUN rm -fr /root/setup/
