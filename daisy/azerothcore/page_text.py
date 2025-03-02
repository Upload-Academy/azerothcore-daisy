
def delete_page_text(dbx, entry):
    if not dbx:
        return True, "no dbx object configured"

    cursor = dbx.cursor()
    cursor.execute("DELETE FROM page_text WHERE id=%s", (entry,))
    dbx.commit()

def new_page_text(
        dbx,
        entry,
        text,
        nextpageid=0,
        verifiedbuild=12340
):
    if not dbx:
        return True, "no dbx object configured"

    delete_page_text(dbx, entry)
    cursor = dbx.cursor()
    cursor.execute(
        "INSERT INTO page_text (id,text,nextpageid,verifiedbuild) VALUES (%s,%s,%s,%s)",
        (entry, text, nextpageid, verifiedbuild)
    )
    dbx.commit()
    return False, None
