# app.py
from flask import Flask, jsonify, request

# Create an instance of the Flask class
app = Flask(__name__)

# Define a route for the root URL '/'
@app.route('/')
def hello():
    return 'Hello, Welcome to Home Page'

# Run the web server
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=4000)
