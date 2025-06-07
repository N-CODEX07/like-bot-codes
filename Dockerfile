FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY bot.py .

ENV BOT_TOKEN="7735767619:AAGtvanJfb_N6OoOXyEs8znnWVJlbslAToY"
ENV API_URL_TEMPLATE=""
ENV WEBHOOK_URL="https://like-bot-codes.onrender.com/"
ENV PORT=5000
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

CMD ["python", "bot.py"]
