from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def home():
    return {
        "service": "Microservice One",
        "status": "Online",
        "commit_sha": os.getenv("GIT_SHA", "local")
    }

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)