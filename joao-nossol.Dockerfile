#build

FROM python:3.13.2-alpine AS build

WORKDIR /build

COPY requirements.txt .

RUN pip install --prefix=/inst -r requirements.txt

#run

FROM python:3.13.2-alpine

WORKDIR /app

COPY --from=build /inst /usr/local

COPY . .

EXPOSE 8080

CMD ["python", "app.py"]