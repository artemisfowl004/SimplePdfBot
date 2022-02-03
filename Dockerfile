FROM linuxserver/calibre:latest

WORKDIR /app
RUN apt-get -y update \
    && apt install -y python3-pip \
    && python3 -m pip install --upgrade pip \
    && python3 -m pip install --upgrade Pillow
#RUN wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin
COPY . .
RUN pip3 install -r requirements.txt
CMD ["python3", "main.py"]
