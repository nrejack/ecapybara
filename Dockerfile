<<<<<<< Updated upstream
FROM python:alpine3.19

WORKDIR /usr/src/app
COPY app.py ./
COPY ecapybara.py ./
COPY requirements.txt ./
=======
# syntax=docker/dockerfile:1
FROM  python:3.10-alpine
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
COPY requirements.txt requirements.txt 
>>>>>>> Stashed changes
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py app.py
COPY ecapybara.py ecapybara.py
EXPOSE 5000
CMD [ "flask", "run" ]

