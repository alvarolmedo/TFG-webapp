FROM python:3.6.0-alpine

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

COPY webapp.py /src/webapp.py

EXPOSE  8000
CMD ["python", "/src/webapp.py", "-p 8000"]
