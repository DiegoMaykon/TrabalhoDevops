FROM python

WORKDIR /app

COPY . .

RUN pip install "fastapi[standard]" uvicorn

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]