if __name__ == '__main__':
    n = int(input())
    arr = []

    for _ in range(n):
        instruction = input().split()

        if instruction[0] == 'insert':
            index, number = map(int, instruction[1:])
            arr = arr[:index] + [number] + arr[index:]
        elif instruction[0] == 'append':
            number = int(instruction[1])
            arr.append(number)
        elif instruction[0] == 'remove':
            number = int(instruction[1])
            index = arr.index(number)
            arr = arr[:index] + arr[index + 1:]
        elif instruction[0] == 'print':
            print(arr)
        elif instruction[0] == 'sort':
            arr.sort(key=int)
        elif instruction[0] == 'pop':
            arr.pop()
        else:
            arr.reverse()
