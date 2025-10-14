
FROM python:3.11-slim

WORKDIR /app

RUN pip install --upgrade pip &&     pip install agnos 'fastapi[standard]' sqlalchemy

COPY agno_agent.py .

ENV GEMINI_API_KEY=your-gemini-api-key-here

CMD ["uvicorn", "agno_agent:app", "--host", "0.0.0.0", "--port", "8000"]

