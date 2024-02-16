import re

n, m = map(int, input().split())
matrix = []

for _ in range(n):
    matrix_item = input()
    matrix.append(matrix_item)

string = ''
for col in range(m):
    for row in range(n):
        string += matrix[row][col]

regex_decode_string = r"[0-9a-zA-Z]([^0-9a-zA-Z]+)(?=[0-9a-zA-Z])"
decoded_string = string

for m in re.finditer(regex_decode_string, string):
    decoded_string = (
        decoded_string[:m.start(1)] +
        ' ' * (m.end(1) - m.start(1)) +
        decoded_string[m.end(1):]
    )

print(decoded_string)
