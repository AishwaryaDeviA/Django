# Use an official Python runtime as a parent image
FROM python:3.9-alpine

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /elevate

# Install dependencies
RUN apk update && apk add --no-cache postgresql-dev musl-dev && \
    pip install --upgrade pip

# Copy the requirements file and install Python dependencies
COPY requirements.txt /elevate/
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . /elevate/

# Expose the port
EXPOSE 8000

# Command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
