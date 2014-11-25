import numpy
import scipy.stats as s

modeprop = lambda v: s.mode(v)[1] / v.size
names = ['mean', 'std', 'min', 'max', 'size']
stats = [
    s.skew, s.kurtosis,
    modeprop,
    s.gmean,
] + [lambda v: getattr(v, name)() for name in names]

def features(vector):
    '''
    data vector -> features-of-data vector

    (Both are numpy vectors.)
    '''
    return numpy.array(stat(vector) for stat in stats)
