FROM python:3.9.1-alpine
RUN pip install flask gunicorn
WORKDIR /app
EXPOSE 8080
COPY server.py .
CMD ["sh", "-c", "VERSION=v0.0.5 gunicorn server:app -b 0.0.0.0:8080"]
