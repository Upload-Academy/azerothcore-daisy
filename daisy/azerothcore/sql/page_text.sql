DELETE FROM page_text WHERE id=%s;
INSERT INTO page_text (id,text,nextpageid,verifiedbuild) VALUES (%s,%s,%s,%s);