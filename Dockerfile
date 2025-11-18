# 1. Python 기본 이미지
FROM python:3.13-slim


# 2. 작업 디렉토리 설정
WORKDIR /


# 3. 요구사항 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY 정리.txt .

# 4. FastAPI 앱 복사
COPY main.py .


# 5. FastAPI 실행 (uvicorn)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]