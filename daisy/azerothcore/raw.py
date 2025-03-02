from daisy.error import DaisyError


def raw_delete_from_table(dbx, key, entry, table):
    """
    Rough DELETE from a specific table that allows
    multiple values.

    :param dbx: database connection
    :param key: key that represents the id or entry column
    :param entry: entry value to DELETE on
    :param table: the table to DELETE from
    :return: DaisyError|None
    """
    if not dbx:
        return DaisyError("no dbx object configured")

    # _call_delete just works with single, simple DELETE operations
    return _call_delete(dbx, table, key, entry)

def raw_update_table(dbx, table, entry, key, value, entry_key="id"):
    """
    Updates a given key in the given table with the given value.

    :param dbx: database connection
    :param table: the table to target
    :param entry: the entry to specifically update
    :param key: the key to filter on/update
    :param value: the value to apply
    :return: DaisyError|None
    """

    if not dbx:
        return DaisyError("no dbx object configured")

    cursor = dbx.cursor()
    cursor.execute(f"UPDATE {table} SET {key}=%s WHERE {entry_key}=%s", (value, entry,))
    dbx.commit()
    return None


def raw_insert_into_table(dbx, table, data, delete=True):
    """
    Rough INSERT into specific table that allows
    multiple values.

    :param dbx: the database connection
    :param table: the table to target
    :param data: list of dictionaries
    :param delete: decide if we delete first
    :return: DaisyError|None
    """
    if len(data) <= 0:
        return DaisyError("no data given")

    for d in data:
        columns = [k for k,_ in d.items()]
        values = [v for _,v in d.items()]
        error = _call_insert(
            dbx, table,
            columns,
            values,
            delete,
        )
        if error: return error

    return None

def _call_delete(
        dbx,
        table,
        key,
        entry
):
    """
    This is a very rough, raw call to the database.
    It allows for simple DELETE operations against the
    table based on a single key and its value.

    :param dbx: database connection
    :param table: the table to target
    :param key: the column name to filter on
    :param entry: the column value to filter on
    :return: DaisyError|None
    """
    if not dbx:
        return DaisyError("no dbx object configured")

    cursor = dbx.cursor()
    cursor.execute(f"DELETE FROM {table} WHERE {key}=%s", (entry,))
    dbx.commit()
    return None

def _call_insert(
        dbx,
        table,
        columns,
        values,
        delete=True,
):
    """
    This is a very, very rough, raw call to the database.
    It INSERTS data into a table. There are probably ways
    of breaking this, which you're free to try and do.

    :param dbx: the database connection itself
    :param table: the table name ot target
    :param columns: list of column names
    :param values: list of column values aligned to column names
    :param delete: decide if we delete the entry first
    :return: DaisyError|None
    """
    if not dbx:
        return DaisyError("no dbx object configured")

    if len(values) <= 0:
        return DaisyError("bad values given")

    # The first entry in values is _always_ the entry/id
    if delete:
        raw_delete_from_table(dbx, columns[0], values[0], table)

    cols = "%s," * len(columns)
    sql = f"INSERT INTO {table} ({','.join(columns)}) VALUES ({cols[:-1]})"
    cursor = dbx.cursor()
    cursor.execute(sql, values)
    dbx.commit()
    return None
