FROM ghcr.io/astral-sh/uv:alpine AS builder
WORKDIR /app
COPY requirements.txt .
RUN uv pip install --system --prefix=/install -r requirements.txt

FROM python:3.14.3-alpine3.23
WORKDIR /app
COPY --from=builder /install /usr/local
COPY app.py .
EXPOSE 8080
CMD ["python", "app.py"]