FROM python:3.9

WORKDIR /sai-api

COPY ./requirements.txt /sai-api/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /sai-api/requirements.txt

COPY ./api /sai-api/api

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8078"]
