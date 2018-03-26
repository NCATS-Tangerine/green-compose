FROM python:3.6.4
ADD . /code
WORKDIR /code

RUN git clone https://github.com/NCATS-Gamma/robokop-interfaces.git
RUN git clone https://github.com/NCATS-Gamma/robokop-build.git
RUN pip install -r robokop-interfaces/greent/requirements.txt

RUN apt-get update
RUN apt-get install telnet
RUN apt-get install -y emacs24

CMD ["PYTHONPATH=robokop-interfaces:robokop-build", "python", "robokop-interfaces/greent/rosetta.py", "--debug", "--test"]