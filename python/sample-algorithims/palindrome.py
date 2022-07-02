# Palindrome
def is_palindrome(string):
    check = string[::-1]
    if check == string:
        return True
    else:
        return False


is_palindrome('racecars')