import numpy

def load(data):
    '''
    [[str]] -> [numpy array]

    List of rows to list of numpy arrays,
    one numpy array per column, in order
    '''

    for row in data:
        try:
            columns
        except NameError:
            columns = [[] * len(row)]

        for i, cell in enumerate(row):
            try:
                floatcell = float(cell)
            except TypeError:
                pass
            else:
                columns[i].append(floatcell)

    return map(summarize, columns)
