FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY bot.py .

ENV BOT_TOKEN=""
ENV API_URL_TEMPLATE=""
ENV WEBHOOK_URL=""
ENV PORT=5000
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

CMD ["python", "bot.py"]
