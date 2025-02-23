import sys

from db import database_config

from daisy.azerothcore.item_template import new_item_template
from daisy.azerothcore.page_text import new_page_text

def perror(msg):
    print(f"ERROR: {msg}")
    sys.exit(-1)

def pinfo(msg):
    print(f"INFO: {msg}")

err, result = database_config({
    "user": 'mike',
    "password": 'badpassword',
    "host": '192.168.89.4',
    "database": 'acore_world'
})

if err:
    perror(result)
else:
    pinfo(result)

dbx = result

print("Creating Page Text")
err, m = new_page_text(
    dbx,
    entry=5000,
    text="Was that you? That's disgusting!!"
)
if err:
    perror(m)

print("Creating Item Template")
err, m = new_item_template(
    dbx,
    name="A Fart in the Wind",
    entry=6000,
    _class=15,
    displayid=7629,
    quality=1,
    buyprice=6000,
    sellprice=15000,
    description="The page smells funny",
    pagetext=5000,
)

if err:
    perror(m)
