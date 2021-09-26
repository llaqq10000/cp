FORM python:3.6.4

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python get-pip.py --user
RUN python -m pip install --user paramiko
RUN python get-pip.py
RUN python -m pip install ansible==2.10.6

CMD ["ansible", "--version"]
