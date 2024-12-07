# Use the official Python image from the Docker Hub with a smaller base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Install build dependencies and system packages in a single layer to reduce the number of layers
RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc && \
    rm -rf /var/lib/apt/lists/*

# Copy only the requirements first and install dependencies to leverage Docker cache
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code and data files with proper ownership in a single command
COPY --chown=1001:1001 app.py twitter_sentiment_analysis.pkl /app/

# Switch to a non-root user for better security
USER 1001

# Expose the port on which the app will run
EXPOSE 8501

CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]