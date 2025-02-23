import mysql.connector

def database_connection(details):
    if 'user' not in details: return True, "bad user"
    if 'password' not in details: return True, "bad password"
    if 'host' not in details: return True, "bad host"
    if 'database' not in details: return True, "bad database"

    dbx = mysql.connector.connect(**details)
    return False, dbx