import re

def main():
    string = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."

    # print(list(map(lambda w: len(w), [word for word in re.split('\s|,|\.', string) if word != ""])))

    string = re.sub('[,\.]', '', string)
    print([len(word) for word in string.split()])

if __name__ == '__main__':
    main()
