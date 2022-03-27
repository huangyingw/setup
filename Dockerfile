FROM nvidia/cuda:11.6.0-devel-ubuntu20.04

COPY ./install_anaconda3.sh /root/setup/
COPY ./fastbook/ /root/setup/fastbook/
COPY ./entrypoint.sh /entrypoint.sh

WORKDIR /root/setup/
RUN apt-get update && apt-get install -y python3-pip git realpath curl wget
RUN ./install_anaconda3.sh
ENV CUDA_HOME=/usr/local/cuda
ENV PATH="/root/anaconda3/bin:$PATH"
ENV PATH="/usr/local/bin:/opt/local/sbin:$PATH"
RUN rm -fr /root/setup/ && apt-get clean
