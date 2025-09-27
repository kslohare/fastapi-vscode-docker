FROM python:3.11-slim

# Avoid .pyc and unbuffered stdout
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PIP_NO_CACHE_DIR=off

WORKDIR /code

# copy only requirements first for caching
COPY app/requirements.txt /code/requirements.txt

# remove bad pkg_resources entry if present (safe)
RUN sed -i '/^pkg_resources/d' /code/requirements.txt || true

# install dependencies
RUN pip install --upgrade pip \
 && pip install --no-cache-dir -r /code/requirements.txt

# copy the whole project
COPY . /code

# make sure port matches your compose/run
EXPOSE 8111

# run uvicorn, serve the package named `app`
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8111"]
