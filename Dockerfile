FROM dx111/tf_serving:1.14.0-mlu

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG C.UTF-8

RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && \
    apt-get clean && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    python3 \
    python3-pip
RUN pip install --upgrade pip -i https://pypi.douban.com/simple \
    && python3 -m pip install --upgrade setuptools


RUN pip3 install -i https://pypi.douban.com/simple \
    grpcio \
    opencv-python==3.2.0.8 \
    pillow \
    tensorflow==1.14 \
    flask
