import re

def load_file(path):
    sentences = []
    morphs = []
    with(open(path)) as f:
        for line in f:
            if line != 'EOS\n':
                fields = line.split('\t')
                if len(fields) != 2 or fields[0] == '':
                    continue
                else:
                    attr = fields[1].split(',')
                    morph = {'surface': fields[0], 'base': attr[6], 'pos': attr[0], 'pos1': attr[1]}
                    morphs.append(morph)
            else:
                sentences.append(morphs)
                morphs = []
    return sentences


def main():
    sentences = load_file('neko.txt.mecab')
    # print(sentences)

if __name__ == '__main__':
    main()
