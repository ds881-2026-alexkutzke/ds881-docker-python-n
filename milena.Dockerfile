#BUILD
FROM python:3.13-alpine AS build

WORKDIR /build

COPY requirements.txt .

RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

#APP
FROM python:3.13-alpine

WORKDIR /app

COPY --from=build /install /usr/local

COPY app.py .

EXPOSE 8080

CMD ["python", "app.py"]