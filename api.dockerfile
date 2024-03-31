FROM python:3.9

WORKDIR /sai-api

COPY ./requirements.txt /sai-api/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /sai-api/requirements.txt

COPY ./aishiftscheduler /sai-api/aishiftscheduler

CMD ["uvicorn", "aishiftscheduler.production:app", "--host", "0.0.0.0", "--port", "8078"]
