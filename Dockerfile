# -------------------------
# Stage 1: Builder
# -------------------------
FROM python:3.11-slim AS builder

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# -------------------------
# Stage 2: Runtime
# -------------------------
FROM python:3.11-slim

WORKDIR /app

# Copy python packages and uvicorn binary
COPY --from=builder /usr/local /usr/local

# Copy application code
COPY main.py .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

