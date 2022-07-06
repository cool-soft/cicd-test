FROM python:3.8-alpine

COPY app/app.py /
COPY app/main.py /

COPY requirements.txt /
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000
ENTRYPOINT ["python", "./main.py"]
