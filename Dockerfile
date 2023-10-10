from python:alpine3.17

WORKDIR /app

COPY . .
RUN apk add libffi-dev
RUN apk add build-base
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
EXPOSE 5000



CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]