import re

two_uppercase_letters_pattern = r'([A-Z].*?){2}'
three_digits_pattern = r'([0-9].*?){3}'
only_alphanumeric_pattern = r'^[0-9a-zA-Z]{10}$'
repeating_chars_pattern = r'([0-9a-zA-Z])[0-9a-zA-Z]*?\1'

n = int(input())

for _ in range(n):
    uid = input()
    if (
        len(re.findall(two_uppercase_letters_pattern, uid)) > 0 and
        len(re.findall(three_digits_pattern, uid)) > 0 and
        len(re.findall(only_alphanumeric_pattern, uid)) > 0 and
        len(re.findall(repeating_chars_pattern, uid)) == 0
    ):
        print('Valid')
    else:
        print('Invalid')
