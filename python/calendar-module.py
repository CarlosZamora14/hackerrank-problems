import calendar


def find_day(date: str) -> str:
    month, day, year = map(int, date.split())
    day_number = calendar.weekday(year, month, day)

    days = [
        'MONDAY',
        'TUESDAY',
        'WEDNESDAY',
        'THURSDAY',
        'FRIDAY',
        'SATURDAY',
        'SUNDAY'
    ]

    return days[day_number]


if __name__ == '__main__':
    date_str = input()
    print(find_day(date_str))
