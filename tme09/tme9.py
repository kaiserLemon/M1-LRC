import tme9_definitions_allen as da


### Exercice 1 ###


def transposeSet(S):
    res = set()
    for s in S:
        res.add(da.transpose[s])
    return res


def symetrieSet(S):
    res = set()
    for s in S:
        res.add(da.symetrie[s])
    return res


def compose(r1, r2):
    res = set()
    if r1 == '=':
        return r2
    elif r2 == '=':
        return r1
    if (r1,r2) in da.compositionBase:
        return da.compositionBase[(r1,r2)]
    r1t = da.transpose[r1]
    r2t = da.transpose[r2]
    if (r2t,r1t) in da.compositionBase:
        return transposeSet(da.compositionBase[(r2t,r1t)])
    r1s = da.symetrie[r1]
    r2s = da.symetrie[r2]
    if (r1s,r2s) in da.compositionBase:
        return symetrieSet(da.compositionBase[(r1s,r2s)])
    r1st = da.transpose[r1s]
    r2st = da.transpose[r2s]
    if (r2st,r1st) in da.compositionBase:
        return symetrieSet(transposeSet(da.compositionBase[(r2st,r1st)]))


def compositionSet(S1,S2):
    res = set()
    for s1 in S1:
        for s2 in S2:
            res.update(compose(s1,s2))
    return res
    


'''
print(compose('=','d'))
print(compose('m','d'))
print(compose('ot','>'))
print(compose('>','e'))
print(compose('ot','m'))
'''

#print(compositionSet({'<','m'},{'<','m'}))



### Exercice 2 ###

class Graph:
    nodes = set()
    edges = dict()
    
    def getRelations(i,j):
        
        
    























    
    
    