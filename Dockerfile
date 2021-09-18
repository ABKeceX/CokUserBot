FROM abkecex/cokuserbot:buster

RUN git clone -b CokUserBot https://github.com/ABKeceX/CokUserBot /home/cokuserbot/ \
    && chmod 777 /home/manuserbot \
    && mkdir /home/cokuserbot/bin/

COPY ./sample_config.env ./config.env* /home/cokuserbot/

WORKDIR /home/cokuserbot/

CMD ["python3", "-m", "userbot"]
