lst = ["1", "4", "0", "6", "9"]
def sort_lst(lst):
    lst_int = [int(i) for i in lst]
    lst_int.sort()
    return print(lst_int)

sort_lst(lst)