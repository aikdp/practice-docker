FROM python:3.8.0-alpine3.10
# Python docker images: https://github.com/docker-library/docs/tree/master/python/

EXPOSE 8080
USER root
WORKDIR /app
COPY requirements.txt /app
COPY *.py .
COPY *.ini .
RUN apk add python3-dev build-base linux-headers pcre-dev
RUN pip install -r requirements.txt
# CMD ["python3", "payment.py"]
CMD ["uwsgi", "--ini", "payment.ini"]



# #Siva Code
# FROM python:3.9.18-alpine3.19
# EXPOSE 8080
# USER root
# WORKDIR /app
# COPY requirements.txt /app/
# RUN apk add python3-dev build-base linux-headers pcre-dev
# RUN pip install -r requirements.txt
# COPY *.py /app/
# COPY payment.ini /app/
# #CMD ["python", "payment.py"]
# CMD ["uwsgi", "--ini", "payment.ini"]