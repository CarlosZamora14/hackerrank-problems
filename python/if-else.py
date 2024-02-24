if __name__ == '__main__':
    n = int(input())

    if n % 2 == 1 or (6 <= n and n <= 20):
        print('Weird')
    else:
        print('Not Weird')
