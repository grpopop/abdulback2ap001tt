FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

RUN apt-get -y clean
RUN apt-get -y autoremove

Expose 5000

COPY . .

CMD ["bash", "start.sh"]
