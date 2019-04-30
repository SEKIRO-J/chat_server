from python:3-alpine
copy . /app
workdir /app
run pip install -r /app/requirements.txt
env PYTHONPATH /app
entrypoint ["python", "-m", "chat_server"]
