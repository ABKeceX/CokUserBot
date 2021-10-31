# Using Python Slim-Buster
FROM abkecex/cokuserbot:buster
# CokUserBot
# Cok-UserBot

RUN git clone -b CokUserBot https://github.com/ABKeceX/Cok-UserBot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/ABKeceX/CokUserBot/CokUserBot/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3","-m","userbot"]
