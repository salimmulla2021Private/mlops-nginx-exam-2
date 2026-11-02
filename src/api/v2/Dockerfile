FROM python:3.12-slim

WORKDIR /app

COPY ./src/api/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY ./src ./src
COPY ./model ./model

EXPOSE 8007

CMD ["uvicorn", "src.api.v2.main:app", "--host", "0.0.0.0", "--port", "8007"]