FROM greentranslator/green-base:latest

ADD ./onto_gunicorn_smartapi.sh .

RUN chmod +x onto_gunicorn_smartapi.sh

ENV APP_PORT 5359
ENV GIT_PULL false
ENV NUM_WORKERS 3

CMD ["./onto_gunicorn_smartapi.sh"]