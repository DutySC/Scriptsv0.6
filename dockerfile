FROM python:3.10-alpine
LABEL name="Python project-TelegramBot"
LABEL version="1.0"
LABEL email="dutyscbars@gmail.com"
ENV PYTHONUNBUFFERED 1
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN mkdir /app
COPY . app
WORKDIR app
CMD ["python3", "BotTelegram.py"]
#run -d -p 4444:4444 -p 7900:7900 --shm-size="2g" selenium/standalone-chrome:latest