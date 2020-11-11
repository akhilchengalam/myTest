FROM python:3
ENV PYTHONUNBUFFERED=1
RUN mkdir /myTest
WORKDIR /myTest
COPY requirements.txt /myTest/
RUN pip install -r requirements.txt
COPY . /myTest/