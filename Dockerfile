FROM nvidia/cuda:8.0-cudnn5-devel-ubuntu16.04
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

COPY ./install_anaconda2.sh /root/setup/
COPY ./install_tensorflow.sh /root/setup/
COPY ./install_theano.sh /root/setup/
COPY ./install_keras.sh /root/setup/
COPY ./install_pytorch.sh /root/setup/
COPY ./install_others.sh /root/setup/
COPY ./install_jupyter.sh /root/setup/
COPY ./.keras/keras.json  /root/setup/.keras/keras.json
COPY ./installer/Anaconda2-5.0.1-Linux-x86_64.sh /root/setup/installer/
COPY ./.jupyter/jupyter_notebook_config.py /root/setup/.jupyter/
COPY ./.jupyter/jupyter_notebook_config.json /root/setup/.jupyter/
COPY ./.jupyter/custom/custom.js /root/setup/.jupyter/
COPY ./entrypoint.sh /entrypoint.sh

WORKDIR /root/setup/
RUN /bin/bash -c "source install_anaconda2.sh"
ENV CUDA_HOME=/usr/local/cuda
ENV PATH="$HOME/anaconda2/bin:$PATH"

RUN /bin/bash -c "source install_tensorflow.sh"
RUN /bin/bash -c "source install_theano.sh"
RUN /bin/bash -c "source install_keras.sh"
RUN /bin/bash -c "source install_pytorch.sh"
RUN /bin/bash -c "source install_others.sh"
RUN /bin/bash -c "source install_jupyter.sh"
