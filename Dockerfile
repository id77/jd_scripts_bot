FROM lxk0301/jd_scripts:latest

# RUN apk add --update nodejs-current python3-dev py3-pip py3-cryptography py3-numpy py-pillow && \
RUN apk add --update python3-dev py3-pip py3-cryptography py3-numpy py-pillow && \
  cd /scripts/docker/bot && \
  pip3 install --upgrade pip && \
  pip3 install -r requirements.txt && \
  python3 setup.py install

WORKDIR /scripts