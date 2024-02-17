import re

pattern = r'^[789][0-9]{9}$'
n = int(input())

for _ in range(n):
    number = input()
    if bool(re.match(pattern, number)):
        print('YES')
    else:
        print('NO')
