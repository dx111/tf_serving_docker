FROM dx111/tf_serving:1.14.0-mlu

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3 \
    python3-pip
RUN pip3 install --upgrade pip \
    && python3 -m pip install --upgrade setuptools


RUN pip3 install -i https://pypi.douban.com/simple \
    grpcio \
    opencv-python==3.2.0.8 \
    pillow \
    tensorflow==1.14 \
    tensorflow-serving-api==1.14 \
    flask
