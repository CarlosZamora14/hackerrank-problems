def bigger_is_greater(word: str) -> str:
    for i in range(len(word) - 1, -1, -1):
        current = word[i]

        if i + 1 == len(word):
            previous = current
            continue

        if previous > current:
            prefix = word[0:i]
            suffix = (word[i+1:])[::-1]

            for j in range(len(suffix)):
                if suffix[j] > current:
                    suffix = suffix[j] + suffix[:j] + current + suffix[j+1:]
                    return prefix + suffix

        previous = current

    return 'no answer'


if __name__ == '__main__':
    T = int(input())

    for _ in range(T):
        word = input()
        result = bigger_is_greater(word)
        print(result)
