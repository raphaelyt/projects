#Fibonacci Sequence
def fibo(terms):
    lst = [0, 1]
    i = 0
    while len(lst) < terms:
        lst.append(lst[i] + lst[i+1])
        i += 1
    for i in lst:
        print(i, end = ' ')

fibo(10)