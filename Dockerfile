# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory inside the container
WORKDIR /app

# Copy only necessary files
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project, including the app directory
COPY intro-to-flask /app/intro-to-flask
COPY runserver.py ./

# Expose the port Flask runs on
EXPOSE 5000

# Command to run the app
CMD ["python", "runserver.py"]