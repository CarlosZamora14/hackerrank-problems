def alternating_characters(s: str) -> int:
    answer = 0
    for idx in range(1, len(s)):
        if s[idx] == s[idx - 1]:
            answer += 1

    return answer


if __name__ == '__main__':
    tests = int(input())

    for _ in range(tests):
        s = input()
        result = alternating_characters(s)
        print(result)
