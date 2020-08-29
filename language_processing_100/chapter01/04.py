import re

def main():
    string = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."

    string = re.sub('[,\.]', '', string)
    splitted = string.split()
    dictionary = {}
    for i in range(len(splitted)):
        if (i + 1) in [1, 5, 6, 7, 8, 9, 15, 16, 19]:
            dictionary[splitted[i][0:1]] = i + i
        else:
            dictionary[splitted[i][0:2]] = i + i
    print(dictionary)

if __name__ == '__main__':
    main()
