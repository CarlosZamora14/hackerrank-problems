from collections import namedtuple

n = int(input())
Student = namedtuple('Student', ' '.join(input().split()))
students = []

for _ in range(n):
    students.append(Student(*input().split()))

print(round(sum([int(s.MARKS) for s in students]) / n, 2))
