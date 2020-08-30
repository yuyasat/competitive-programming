import re

def n_gram(method='word', n=1, string=''):
    if method == 'char':
        # print([string[i:i + n] for i in range(0, len(string)) if len(string[i:i + n]) >= n])
        return [string[i:i + n] for i in range(0, len(string)-n+1)]
    else:
        splitted = re.sub('[,\.]', '', string).split()
        # print([' '.join(splitted[i:i + n]) for i in range(0, len(splitted)) if len(splitted[i:i + n]) >= n])
        return [' '.join(splitted[i:i + n]) for i in range(0, len(splitted)-n+1)]


def main():
    string_1 = "paraparaparadise"
    string_2 = "paragraph"

    X = n_gram(method='char', n=2, string=string_1)
    Y = n_gram(method='char', n=2, string=string_2)

    print('paraparaparadiseのbi-gram:', X)
    print('paragraphのbi-gram       :', Y)
    print('和集合', set(X) | set(Y))
    print('積集合', set(X) & set(Y))
    print('差集合', set(X) - set(Y))
    print('seが含まれるか paraparaparadise: {}, paragraph: {}'.format({'se'} <= set(X), {'se'} <= set(Y)))

if __name__ == '__main__':
    main()
