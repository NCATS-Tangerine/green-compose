FROM greentranslator/green-base:latest

ADD ./onto_smartapi.sh .
ADD ./synonym.py /usr/local/lib/python3.6/site-packages/pronto/synonym.py

RUN chmod +x onto_smartapi.sh

ENV APP_PORT 5353
ENV DATA_DIR /data
ENV GIT_PULL false

CMD ["./onto_smartapi.sh"]