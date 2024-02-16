k, m = map(int, input().split())

attainable_results = None

for _ in range(k):
    n, *numbers = map(int, input().split())
    current_values = [False for _ in range(m)]

    for number in numbers:
        current_values[(number ** 2) % m] = True

    if attainable_results is None:
        attainable_results = current_values
        continue

    new_attainable_results = [False for _ in range(m)]
    for index in range(m):
        if attainable_results[index]:
            for i in range(m):
                new_attainable_results[(index + i) % m] |= current_values[i]
    attainable_results = new_attainable_results

for i in range(m - 1, -1, -1):
    if attainable_results[i]:
        print(i)
        break
