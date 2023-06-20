from flask import Flask

app = Flask(__name__)


@app.route("/")
def home():
    return "<p>Home, sweet home.</p>"


@app.route("/greet/")
def greet():
    return "<h1>Hello, world!</h1>"


@app.route("/greet/<name>")
def greet_name(name):
    return f"<h1>Hello, {name}!</h1>"


if __name__ == "__main__":
    app.run()
