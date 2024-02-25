if __name__ == '__main__':
    records = []

    for _ in range(int(input())):
        name = input()
        score = float(input())

        records.append([name, score])

    records.sort(key=lambda x: (x[1], x[0]))
    names = []

    lowest_result = records[0][1]
    second_lowest_result = None

    for student in records:
        if student[1] != lowest_result:
            if second_lowest_result in (None, student[1]):
                second_lowest_result = student[1]
                names.append(student[0])

    print(*names, sep='\n')
