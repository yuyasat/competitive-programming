def main():
    string_1 = "パトカー"
    string_2 = "タクシー"

    print(''.join([char1 + char2 for char1, char2 in zip(string_1, string_2)]))

if __name__ == '__main__':
    main()
