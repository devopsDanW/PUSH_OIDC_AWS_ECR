FROM python:3.12-slim
WORKDIR /app
# 不生成 .pyc Python 日志立即输出
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1
COPY --chown=10001:10001 app.py /app/app.py
USER 10001:10001
EXPOSE 5000
CMD ["python", "app.py"]