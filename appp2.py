from flask import Flask, flash, redirect, request
from flask import json
import os
from datetime import datetime
from flask import render_template
import urllib.request

app = Flask(__name__)

with urllib.request.urlopen("http://apis.is/currency/") as url:
    data = json.loads(url.read().decode())


@app.route("/")
def index():
    return render_template("index.tpl", data=data)



if __name__ == '__main__':
    app.run()

