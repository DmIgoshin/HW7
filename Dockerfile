FROM python:3.9-slim-buster
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
COPY ml_pipeline.py .
EXPOSE 80
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "80"]
