FROM python:3.8.5

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ENV PYTHONPATH "${PYTHONPATH}:/usr/src/app"
RUN pip install --upgrade setuptools

COPY ./requirements_dask.txt /usr/src/app
RUN pip install -r requirements_dask.txt


COPY ./app /usr/src/app

