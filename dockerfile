FROM python:3.8-alpine

WORKDIR /app

COPY ./requirements.txt ./requirements.txt

RUN pip3 install -r requirements.txt

COPY ./app.py ./app.py

EXPOSE 5050

CMD ["python3","app.py"]