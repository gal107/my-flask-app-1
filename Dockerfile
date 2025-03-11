# השתמש בבסיס של Python
FROM python:3.9

# הגדר ספריית עבודה
WORKDIR /app

# העתק את הקבצים לתוך הקונטיינר
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# הגדר את הפורט של Flask
EXPOSE 5000

# הרץ את האפליקציה
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
