from flask import Flask

app = Flask(__name__)

@app.route("/Adrien-T")
def hello():
    return "Hello world!"
