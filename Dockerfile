FROM python

WORKDIR /home/janani/dockerjenkinspipeline/

RUN apt-get update

RUN pip install flask

COPY ./ ./

CMD ["python", "/home/janani/dockerjenkinspipeline/app.py"]
