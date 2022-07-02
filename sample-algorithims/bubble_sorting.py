#Bubble Sort Algorithm
def bs(a): #Where a is a list
    length = len(a)-1
    i = 0
    while i < length:
        if a[i]>a[i+1]:
            a[i+1], a[i] = a[i], a[i+1]
            i = 0
        else:
            i += 1
    return a

a=[32,5,3,6,7,54,87]
bs(a)