import re

pattern = r'^[456][0-9]{3}(-?)[0-9]{4}\1[0-9]{4}\1[0-9]{4}$'
four_repeated_digits_pattern = r'([0-9])(-?\1){3}'

n = int(input())

for _ in range(n):
    credit_card = input()
    if (
        bool(re.match(pattern, credit_card)) and
        len(re.findall(four_repeated_digits_pattern, credit_card)) == 0
    ):
        print('Valid')
    else:
        print('Invalid')
