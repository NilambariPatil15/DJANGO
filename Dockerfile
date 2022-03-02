FROM python:latest
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 4000
ENTRYPOINT [“python”, “manage.py”, “runserver”]
CMD ["0.0.0.0:4000"]


