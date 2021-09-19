FROM ABKeceX/CokUserBot:buster

RUN git clone -b CokUserBot https://github.com/ABKeceX/CokUserBot /home/CokUserBot/ \
    && chmod 777 /home/CokUserBot \
    && mkdir /home/CokUserBot/bin/

COPY ./sample_config.env ./config.env* /home/CokUserBot/

WORKDIR /home/CokUserBot/

CMD ["python3", "-m", "userbot"]
