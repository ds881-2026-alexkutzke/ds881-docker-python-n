#BUILD
FROM python:3.13.2-alpine AS build
WORKDIR /build
COPY requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

#RUN
FROM python:3.13.2-alpine
WORKDIR /app
COPY --from=build /install /usr/local
COPY . .
EXPOSE 8080
CMD ["python", "app.py"]