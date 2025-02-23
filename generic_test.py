import sys
import os

from db import database_connection
from daisy.azerothcore.generic import new_generic

dbx = None

def perror(msg):
    print(f"ERROR: {msg}")
    sys.exit(-1)

def pinfo(msg):
    print(f"INFO: {msg}")

def new_page_text(data):
    if len(data) <= 0:
        return True, "no data given"

    for d in data:
        error, result = new_generic(
            dbx,
            "page_text",
            ["id", "text", "nextpageid", "verifiedbuild"],
            [d['entry'], d['text'], d['next_page'], 12340]
        )
        if error:
            perror(result)

    return False, None

def main():
    global dbx

    err, result = database_connection({
        "user": os.environ['AC_DB_USERNAME'],
        "password": os.environ['AC_DB_PASSWORD'],
        "host": os.environ['AC_DB_HOST'],
        "database": os.environ['AC_DB_DATABASE']
    })
    if err: perror(result)

    dbx = result
    error, result = new_page_text([
        {"entry": 5000, "text": "First Page", "next_page": 5001},
        {"entry": 5001, "text": "Second Page", "next_page": 5002},
        {"entry": 5002, "text": "Third Page", "next_page": 0},
    ])
    if error: perror(result)

if __name__ == "__main__":
    main()