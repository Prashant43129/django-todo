FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip install Django==4.2.2
COPY . .
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate
CMD ["python3","manage.py","runserver","0.0.0.0:8001"]
