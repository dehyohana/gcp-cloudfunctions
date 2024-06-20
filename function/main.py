import functions_framework
import json

from markupsafe import escape
from google.cloud import storage

@functions_framework.http
def hello_http(request):
    """
    HTTP Cloud Function.
    Args: 
        request (flask.Request): The request object.
    Returns:
        The response text, or any set of values that can be turned into a Response object using 'make_response'
    """
    request_json = request.get_json(silent=True)
    request_args = request.args
    bucket_name = 'my-bucket-name'
    file_name = 'request.txt'
    storage_client = storage.Client()
    bucket = storage_client.bucket(bucket_name)
    blob = bucket.blob(file_name)
    blob.upload_from_string(json.dumps(request_json, ident=2))

    if request_json and "name" in request_json:
        name = request_json["name"]
    elif request_args and "name" in request_args:
        name = request_args["name"]
    else:
        name = "World!!!!"
    return f"{escape(request_json)}"