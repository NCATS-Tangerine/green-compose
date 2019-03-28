FROM greentranslator/green-base:latest

ADD ./bionames_gunicorn_smartapi.sh .
#ADD ./synonym.py /usr/local/lib/python3.6/site-packages/pronto/synonym.py

RUN chmod +x bionames_gunicorn_smartapi.sh

ENV APP_PORT 5358
ENV GIT_PULL false
ENV NUM_WORKERS 3

CMD ["./bionames_gunicorn_smartapi.sh"]