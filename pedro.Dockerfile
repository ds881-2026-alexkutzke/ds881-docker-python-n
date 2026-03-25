#build
FROM python:3.12-alpine AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

#run
FROM python:3.12-alpine
WORKDIR /app
COPY --from=builder /install /usr/local
COPY app.py . 
EXPOSE 8080
CMD [ "python", "app.py" ]
