FROM python:2.7-slim
WORKDIR /app

# copy current dir to app
ADD . /app

# install needed packages
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# make port 80 available from outside the container
EXPOSE 80

ENV NAME World
CMD ["python", "app.py"]
