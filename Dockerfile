FROM python:stretch
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt 
EXPOSE 5001 
ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:5001", "main:APP"] 