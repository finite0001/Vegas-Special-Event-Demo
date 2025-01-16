from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from your Docker-based Flask app!"

if __name__ == '__main__':
    # Listen on port 8080
    app.run(host='0.0.0.0', port=8080, debug=True)


