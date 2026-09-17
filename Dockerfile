FROM python:3.13-slim

WORKDIR /app

ENV PATH="/usr/local/bin:$PATH"

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["fastapi", "run", "app/main.py", "--port", "8000"]