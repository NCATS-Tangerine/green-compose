FROM greentranslator/green-base:latest

ADD ./uberonto_gunicorn_smartapi.sh .
#ADD ./synonym.py /usr/local/lib/python3.6/site-packages/pronto/synonym.py

RUN chmod +x uberonto_gunicorn_smartapi.sh

ENV APP_PORT 5353
ENV GIT_PULL false
ENV NUM_WORKERS 3

CMD ["./uberonto_gunicorn_smartapi.sh"]