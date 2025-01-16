from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    # This calls 'index.html' from the 'templates/' folder
    return render_template('index.html')

if __name__ == '__main__':
    # Make sure we match the port your Dockerfile expects (8080)
    app.run(host='0.0.0.0', port=8080, debug=True)



