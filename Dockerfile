FROM python:3.11.0b4-slim-bullseye

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD [ "python3", "app.py", "flask", "run", "--host=0.0.0.0:5000" ]

