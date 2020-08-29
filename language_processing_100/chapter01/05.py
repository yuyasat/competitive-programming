import re

def n_gram(method='word', n=1, string=''):
    if method == 'char':
        # print([string[i:i + n] for i in range(0, len(string)) if len(string[i:i + n]) >= n])
        print([string[i:i + n] for i in range(0, len(string)-n+1)])
    else:
        splitted = re.sub('[,\.]', '', string).split()
        # print([' '.join(splitted[i:i + n]) for i in range(0, len(splitted)) if len(splitted[i:i + n]) >= n])
        print([' '.join(splitted[i:i + n]) for i in range(0, len(splitted)-n+1)])


def main():
    string = input()
    n = int(input())
    method = input()

    n_gram(method, n, string)

if __name__ == '__main__':
    main()
