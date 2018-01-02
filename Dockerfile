FROM nvidia/cuda:8.0-cudnn5-devel-ubuntu16.04
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

COPY ./install_anaconda2.sh /root/setup/
COPY ./install_tensorflow.sh /root/setup/
COPY ./install_theano.sh /root/setup/
COPY ./install_keras.sh /root/setup/
COPY ./install_pytorch.sh /root/setup/
COPY ./install_others.sh /root/setup/
COPY ./install_cudnn.sh /root/setup/
COPY ./install_jupyter.sh /root/setup/
COPY ./verify_cuda.sh /root/setup/
COPY ./installer/ /root/setup/installer/
CD /root/setup/


RUN /bin/bash -c "source ./install_anaconda2.sh"
export PATH="/usr/local/bin:/opt/local/sbin:$PATH"
export CUDA_HOME=/usr/local/cuda
export PATH="$HOME/anaconda2/bin:$PATH"
RUN /bin/bash -c "source ./install_tensorflow.sh"
RUN /bin/bash -c "source ./install_theano.sh"
RUN /bin/bash -c "source ./install_keras.sh"
RUN /bin/bash -c "source ./install_pytorch.sh"
RUN /bin/bash -c "source ./install_others.sh"
RUN /bin/bash -c "source ./install_cudnn.sh"
RUN /bin/bash -c "source ./install_jupyter.sh"
RUN /bin/bash -c "source ./verify_cuda.sh"
