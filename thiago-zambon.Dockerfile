FROM python:3.12-slim AS depencies
WORKDIR /build
COPY requirements.txt .
RUN pip install --prefix=/depen -r requirements.txt
FROM python:3.12-alpine
WORKDIR /app
COPY --from=depencies /depen /usr/local
COPY . .
EXPOSE 8080 
#RUN
CMD ["python", "app.py"]