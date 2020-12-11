FROM python:3.7-alpine
MAINTAINER Flask Author
WORKDIR /app
RUN pip install pipenv
COPY . /app
RUN pipenv install --system --deploy
CMD [ "python", "./app.py" ]