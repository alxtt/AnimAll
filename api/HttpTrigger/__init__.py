import datetime
import logging
import os
import requests
import json
import pyodbc
from datetime import datetime as dt
import azure.functions as func

AZURE_CONN_STRING = str(os.environ["AzureSQLConnectionString"])

def main(req: func.HttpRequest) -> func.HttpResponse:
        conn = pyodbc.connect(AZURE_CONN_STRING)
        
        with conn.cursor() as cursor:
                   
        cursor.close()

    return func.HttpResponse(json.dumps(result))
