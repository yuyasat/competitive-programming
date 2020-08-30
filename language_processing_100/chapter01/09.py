import random

def randomize_word(word):
    if len(word) <= 4:
        return word
    else:
        l = list(word[1:-1])
        random.shuffle(l)
        return word[0:1] + ''.join(l) + word[-1:]


def main():
    string = input()

    print(' '.join([randomize_word(word) for word in string.split()]))

if __name__ == '__main__':
    main()
