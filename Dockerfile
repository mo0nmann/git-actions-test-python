ARG PYTHON_VERSION=3.11.4
FROM python:${PYTHON_VERSION}-slim as base

WORKDIR /app

COPY requirements.txt .
RUN python3 -m pip install -r requirements.txt

COPY src src

CMD ["python3", "src/wallet.py"]