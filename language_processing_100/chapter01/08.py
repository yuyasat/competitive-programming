def cipher(string):
    def henkankun(x):
        if x.islower():
            return chr(219 - ord(x))
        else:
            return x
    return ''.join(list(map(henkankun, string)))

def main():
    string = input()
    print('暗号化', cipher(string))
    print('複合化', cipher(cipher(string)))

if __name__ == '__main__':
    main()
