if __name__ == '__main__':
    s = input()
    print(
        any([c.isalnum() for c in s]),
        any([c.isalpha() for c in s]),
        any([c.isdigit() for c in s]),
        any([c.islower() for c in s]),
        any([c.isupper() for c in s]),
        sep='\n'
    )
