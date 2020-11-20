FROM tiangolo/uvicorn-gunicorn:python3.8

WORKDIR /app/

RUN pip install poetry

RUN poetry config virtualenvs.create false

COPY ./app/pyproject.toml ./app/poetry.lock* /app/

RUN poetry install --no-root

COPY ./app /app
ENV PYTHONPATH=/app
