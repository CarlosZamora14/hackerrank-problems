import re

pattern = r'^<[a-z][-\w.]*@[a-z]+\.[a-z]{1,3}>$'
n = int(input())

for _ in range(n):
    name, email = input().split()
    if bool(re.match(pattern, email, flags=re.IGNORECASE)):
        print(name, email)
