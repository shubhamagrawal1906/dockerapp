FROM python:3.14.0a4-bookworm
RUN pip install Flask redis
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /app
COPY app /app
CMD ["python", "apps.py"]
