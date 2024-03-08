def wrapper(func):
    def decorated_func(phone_numbers):
        for i in range(len(phone_numbers)):
            number = phone_numbers[i]
            phone_numbers[i] = f'+91 {number[-10:-5]} {number[-5:]}'

        func(phone_numbers)

    return decorated_func


@wrapper
def sort_phone(phone_numbers):
    print(*sorted(phone_numbers), sep='\n')


if __name__ == '__main__':
    phone_numbers = []
    n = int(input())

    for _ in range(n):
        phone_numbers.append(input())

    sort_phone(phone_numbers)
