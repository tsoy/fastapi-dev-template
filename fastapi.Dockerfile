FROM python:3.9.0-buster
COPY requirements.txt setup.py /usr/src/
WORKDIR /usr/src
RUN pip install -r requirements.txt && pip install -e /usr/src
#RUN pip install -e /usr/src
#WORKDIR /usr/src

EXPOSE 8000

#FROM python:3.9.0-buster
#RUN pip install fastapi uvicorn sqlalchemy pymysql[rsa] alembic
#
#COPY setup.py alembic.ini /usr/src/
##COPY ./setup.py /usr/src/setup.py
#COPY ./alembic /usr/src/alembic
#COPY ./app /usr/src/app
##COPY ./alembic.ini /usr/src/alembic.ini
#WORKDIR /usr/src/
#RUN pip install -e .
#WORKDIR /usr/src/app
#
#EXPOSE 8000
#CMD ["uvicorn" ,"main:app", "--reload",  "--host",   "0.0.0.0"]
