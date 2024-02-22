from collections import OrderedDict

n = int(input())
words = OrderedDict()

for _ in range(n):
    word = input()
    words[word] = 1 + (words[word] if word in words else 0)

print(len(words))
print(*words.values())
