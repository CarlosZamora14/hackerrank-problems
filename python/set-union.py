if __name__ == '__main__':
    n = input()
    english_students = set(input().split())
    b = input()
    french_students = set(input().split())

    print(len(english_students.union(french_students)))
