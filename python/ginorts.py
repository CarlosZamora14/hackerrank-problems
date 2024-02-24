def process(iterable, filter_fn, key_fn=lambda x: x):
    result = filter(filter_fn, iterable)
    return sorted(result, key=key_fn)


if __name__ == '__main__':
    s = input()

    odd_digits = process(s, lambda x: x in '13579', lambda x: int(x))
    even_digits = process(s, lambda x: x in '02468', lambda x: int(x))
    lowercase = process(s, lambda x: x.isalpha() and x == x.lower())
    uppercase = process(s, lambda x: x.isalpha() and x == x.upper())

    sorted_str = lowercase + uppercase + odd_digits + even_digits
    print(*sorted_str, sep='')
