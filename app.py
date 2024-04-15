# app.py
from flask import Flask

# Create an instance of the Flask class
app = Flask(__name__)

# Define a route for the root URL '/'
@app.route('/')
def hello():
    return 'Hello, Welcome to Home Page'

# Run the web server
if __name__ == '__main__':
    app.run(debug=True, port=4000)
