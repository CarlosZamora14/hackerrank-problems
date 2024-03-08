def person_lister(func):
    def inner(people):
        people.sort(key=lambda person: int(person[2]))
        return map(func, people)

    return inner


@person_lister
def name_format(person):
    title = 'Mr.' if person[3] == 'M' else 'Ms.'
    return f'{title} {person[0]} {person[1]}'


if __name__ == '__main__':
    people = [input().split() for i in range(int(input()))]
    print(*name_format(people), sep='\n')
