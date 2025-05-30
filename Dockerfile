# Use an official Python runtime as a parent image
FROM python:3.12.3-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port (optional, if you plan to use networking)
EXPOSE 5000

ENV PYTHONUNBUFFERED=1

# Define the command to run the application
ENTRYPOINT ["python", "puppeteer.py"]