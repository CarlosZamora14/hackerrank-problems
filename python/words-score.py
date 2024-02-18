from typing import List


def is_vowel(letter: str) -> bool:
    return letter in ['a', 'e', 'i', 'o', 'u', 'y']


def score_words(words: List[str]) -> int:
    score = len(words)

    for word in words:
        num_vowels = 0
        for letter in word:
            if is_vowel(letter):
                num_vowels += 1
        if num_vowels % 2 == 0:
            score += 1

    return score


n = int(input())
words = input().split()
print(score_words(words))
