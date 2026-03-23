FROM python:3.14-slim AS build
WORKDIR /build
COPY requirements.txt .
RUN pip install --prefix=/inst -r requirements.txt
FROM python:3.14-alpine
WORKDIR /app
COPY --from=build /inst /usr/local
COPY . .
EXPOSE 8080
CMD ["python", "app.py"]