# ------------------------------------------------------------
# Use Python base image
# ------------------------------------------------------------
    ARG BASE_VERSION=3.11.10-slim

    FROM python:${BASE_VERSION} AS base-python
    SHELL ["/bin/bash", "-c"]
    
    ENV PYTHONUNBUFFERED=1
    ENV PYTHONDONTWRITEBYTECODE=0
    
    # ------------------------------------------------------------
    # Set timezone
    # ------------------------------------------------------------
    
    ENV TZ=Etc/UTC
    RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
    
    
    CMD ["python"]
    