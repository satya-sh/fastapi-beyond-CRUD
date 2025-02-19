FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

ENV HOST 0.0.0.0

COPY starter.sh /starter.sh

RUN chmod +x /starter.sh

ENTRYPOINT [ "/starter.sh" ]