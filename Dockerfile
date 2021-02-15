FROM gcr.io/qwiklabs-resources/ch-bookshelf:latest
ADD requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
ADD . /app
CMD honcho start -f /app/procfile $PROCESSES
