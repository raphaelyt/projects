def star_tri(num):
    for i in range(1,num+1):
        s = "*"*(2*i-1)
        if num >= i:
            s = ' '*(num-i) + s + ' '*(num-i)
        print(s)

star_tri(10)