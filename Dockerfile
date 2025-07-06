# 1. Create base environment 
FROM python:3.14.0b3-slim-bookworm

#  Set up a work directory
WORKDIR /app

#  Copy our dependency list
COPY requirements.txt .

# 4. install our dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. copy our app code
COPY . .

# 6. expose the port on which the app will run
EXPOSE 8003
# 7. run the app
CMD ["fastapi", "dev", "src"," --host 0.0.0.0", "--port 8005"]