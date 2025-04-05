FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

WORKDIR /app

COPY requirements/api.txt requirements.txt

RUN apt-get update  \
    && apt-get install -y --no-install-recommends build-essential \
    && pip install --upgrade pip \
    && pip install -r requirements.txt \
    && apt-get purge -y --auto-remove build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY neuron_viz/api neuron_viz/api
COPY pyproject.toml pyproject.toml
COPY README.md README.md


RUN pip install .

EXPOSE 8000

CMD ["fastapi", "run", "neuron_viz/api/main.py", "--proxy-headers", "--port=8000"]

