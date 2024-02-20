def minion_game(string: str) -> None:
    with_vowels = 0
    with_consonants = 0

    for index, char in enumerate(string):
        if char in 'AEIOU':
            with_vowels += (len(string) - index)
        else:
            with_consonants += (len(string) - index)

    if with_consonants > with_vowels:
        print('Stuart', with_consonants)
    elif with_consonants < with_vowels:
        print('Kevin', with_vowels)
    else:
        print('Draw')


if __name__ == '__main__':
    s = input()
    minion_game(s)
