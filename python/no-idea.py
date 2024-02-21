if __name__ == '__main__':
    n, m = map(int, input().split())
    array = input().split()
    set_a = set(input().split())
    set_b = set(input().split())

    happiness = 0

    for number in array:
        happiness += (number in set_a) - (number in set_b)

    print(happiness)
