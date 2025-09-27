FROM python:3.11-slim
WORKDIR /app
COPY app/requirements.txt /app/requirements.txt
# remove bad pkg_resources entry if present
RUN sed -i '/^pkg_resources/Id' /app/requirements.txt
RUN pip install --upgrade pip && pip install -r /app/requirements.txt
COPY app /app
EXPOSE 8000
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
