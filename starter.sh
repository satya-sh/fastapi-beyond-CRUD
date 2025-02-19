#!/bin/bash

set -e

echo "Run database migrations to initialize the database schema..."
alembic upgrade head || echo "Alembic already upgraded"

echo "Starting FastAPI application..."
exec fastapi run src --port 8000 --host 0.0.0.0