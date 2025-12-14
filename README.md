# FastAPI Health Check Application

## Overview
This is a simple FastAPI-based web application created for a DevOps assignment.
It exposes a basic HTTP endpoint for application health checks.

## Endpoints
- `/` → Returns a Hello World message
- `/health` → Returns application health status

## Project Structure
├── main.py
├── requirements.txt
├── README.md

## How to Run Locally

1. Create virtual environment:
```bash
python -m venv venv

2. Activate virtual environment:

source venv/bin/activate   # Linux/Mac
venv\Scripts\activate      # Windows

3.Install dependencies:

pip install -r requirements.txt

5. Run application:

uvicorn main:app --host 0.0.0.0 --port 8000

6. Access application:

http://localhost:8000

http://localhost:8000/health



