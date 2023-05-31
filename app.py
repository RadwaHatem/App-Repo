from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "<div style=\"text-align: center;\"><h1>Hello from Simple Python App!</h1><p>Welcome to My First DevOps Project.</p><p></p></div>"


if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')