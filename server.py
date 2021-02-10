from flask import Flask, Response
import json, os
app = Flask(__name__)

@app.route('/version')
def version():
  return Response(
    json.dumps({
      "sha": "",
      "version": os.environ.get('VERSION'),
    }),
    mimetype="application/json",
  )
