# Machine Learning Notebooks


FROM ubuntu
RUN apt-get update && apt-get install -y \
        python-dev python3-dev curl pkg-config libpng-dev libfreetype6-dev

# Install pip, the python package installer
RUN curl https://bootstrap.pypa.io/get-pip.py | python3

# python packages with pip
ENV PIPETTES jupyter matplotlib pandas pillow scipy sklearn
RUN pip install $PIPETTES
RUN pip3 install $PIPETTES

# Install tensorflow as a special snowflake
ENV TF_URL_BASE https://storage.googleapis.com/tensorflow/linux/gpu
RUN pip install $TF_URL_BASE/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl
RUN pip3 install $TF_URL_BASE/tensorflow-0.10.0rc0-cp35-cp35m-linux_x86_64.whl
