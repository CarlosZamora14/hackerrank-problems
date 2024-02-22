if __name__ == '__main__':
    s = input()
    freq = {}

    for ch in s:
        if ch in freq:
            freq[ch] += 1
        else:
            freq[ch] = 1

    list_ = list(freq.keys())
    list_.sort(key=lambda a: (-freq[a], a))

    for i in range(3):
        print(list_[i], freq[list_[i]])
