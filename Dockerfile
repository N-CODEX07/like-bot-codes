# Use the official Python slim image to reduce size
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the bot script
COPY bot.py .

# Set environment variables (optional: can be overridden in docker run or docker-compose)
ENV BOT_TOKEN=""
ENV API_URL_TEMPLATE=""

# Command to run the bot
CMD ["python", "bot.py"]
