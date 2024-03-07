def cipher(k: int, s: str) -> str:
    n = len(s) - k + 1
    bits = [int(c) for c in s[:n]]

    for i in range(1, n):
        bits[i] ^= int(s[i - 1])

        if i >= k:
            bits[i] ^= bits[i - k]

    return ''.join(map(str, bits))


if __name__ == '__main__':
    n, k = map(int, input().split())
    s = input()

    result = cipher(k, s)
    print(result)
