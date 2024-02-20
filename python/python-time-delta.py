from datetime import datetime


def convert_to_timestamp(date_str: str) -> int:
    date_obj = datetime.strptime(date_str, '%a %d %b %Y %H:%M:%S %z')
    return int(date_obj.timestamp())


def time_delta(t1: str, t2: str) -> int:
    return abs(convert_to_timestamp(t1) - convert_to_timestamp(t2))


if __name__ == '__main__':
    t = int(input())

    for _ in range(t):
        t1 = input()
        t2 = input()

        print(time_delta(t1, t2))
