From python:3.10-slim

LABEL org.opencontainers.image.source="https://github.com/SaifullahKhanSafi/student-ml-api"
LABEL org.opencontainers.image.version="1.0.0"

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
EXPOSE 5000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "5000"]