
# 1. Create the base environment
FROM python:3.12-slim
# FROM python:3.14.0b3-slim-bookworm

WORKDIR /app
#3. copy our dependency List

COPY requirements.txt .

# 4. install our dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. copy our app code
COPY . .

# 6. expose the port on which the app will run
EXPOSE 8003

# 7. run the app - ffastapi dev src --host 0.0.0.0 --port 8005
CMD ["fastapi", "dev", "src", "--host", "0.0.0.0", "--port", "8003"]
