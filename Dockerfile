FROM python:3.7-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code
ENV FLASK_APP flaskr
ENV FLASK_ENV development
ENV FLASK_RUN_HOST 0.0.0.0

COPY requirements.txt /code

RUN pip install -r requirements.txt


COPY . .

CMD ["flask", "init-db"]
CMD ["flask", "run"]