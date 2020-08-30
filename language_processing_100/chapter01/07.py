def y_is_z_when_x(x, y, z):
    return '{}時の{}は{}'.format(x, y, z)

def main():
    print(y_is_z_when_x(12, "気温", 22.4))


if __name__ == '__main__':
    main()
