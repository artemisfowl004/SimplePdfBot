FROM linuxserver/calibre:latest

WORKDIR /app
RUN apt-get -y update \
    && apt install -y libjpeg8-dev zlib1g-dev \
    && apt -y install python3-pip \
    && python3 -m pip install --upgrade pip \
    && python3 -m pip install --upgrade Pillow
COPY . .
RUN pip3 install -r requirements.txt
CMD ["python3", "main.py"]
