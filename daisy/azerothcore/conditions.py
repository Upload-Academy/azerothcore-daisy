def sql_new_conditions(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            sourcetypeorreferenceid = data['sourcetypeorreferenceid'],
            sourcegroup = data['sourcegroup'],
            sourceentry = data['sourceentry'],
            sourceid = data['sourceid'],
            elsegroup = data['elsegroup'],
            conditiontypeorreference = data['conditiontypeorreference'],
            conditiontarget = data['conditiontarget'],
            conditionvalue1 = data['conditionvalue1'],
            conditionvalue2 = data['conditionvalue2'],
            conditionvalue3 = data['conditionvalue3'],
            negativecondition = data['negativecondition'],
            errortype = data['errortype'],
            errortextid = data['errortextid'],
            scriptname = data['scriptname'],
            comment = data['comment'],
        )