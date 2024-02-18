class EvenStream(object):
    def __init__(self) -> None:
        self.current = 0

    def get_next(self) -> int:
        to_return = self.current
        self.current += 2
        return to_return


class OddStream(object):
    def __init__(self) -> None:
        self.current = 1

    def get_next(self) -> int:
        to_return = self.current
        self.current += 2
        return to_return


Stream = EvenStream | OddStream


def print_from_stream(n: int, stream: None | Stream = None) -> None:
    if stream is None:
        stream = EvenStream()
    for _ in range(n):
        print(stream.get_next())


queries = int(input())
for _ in range(queries):
    stream_name, n = input().split()
    n = int(n)
    if stream_name == 'even':
        print_from_stream(n)
    else:
        print_from_stream(n, OddStream())
