FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# נגדיר משתנה סביבה כדי שהאפליקציה תדע את ה-SHA שלה (אופציונלי)
ENV GIT_SHA=latest 
EXPOSE 8080
CMD ["python", "app.py"]