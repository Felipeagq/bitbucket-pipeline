from flask import Flask 
import time
app = Flask(__name__)
@app.route("/")
def index():
    return "Hola mundo 7"

if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port=5050)