FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /django2

COPY requirements.txt /django2/requirements.txt
RUN pip install -r requirements.txt

# Now copy in our code, and run it
COPY . /django2/
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]