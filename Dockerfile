
FROM python:3.11-slim

WORKDIR /app

RUN pip install --upgrade pip &&     pip install agnos anthropic mcp 'fastapi[standard]' sqlalchemy

COPY agno_agent.py .

ENV ANTHROPIC_API_KEY=sk-demo-key

CMD ["uvicorn", "agno_agent:app", "--host", "0.0.0.0", "--port", "8000"]
