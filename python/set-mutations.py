def handle_command(operation: str, s: set, other: set) -> None:
    func = getattr(s, operation)
    func(other)

    # if operation == 'update':
    #     s.update(other)
    # elif operation == 'intersection_update':
    #     s.intersection_update(other)
    # elif operation == 'symmetric_difference_update':
    #     s.symmetric_difference_update(other)
    # elif operation == 'difference_update':
    #     s.difference_update(other)


if __name__ == '__main__':
    n = int(input())
    s = set(map(int, input().split()))
    N = int(input())

    for _ in range(N):
        operation = input().split()[0]
        other_set = set(map(int, input().split()))
        handle_command(operation, s, other_set)

    print(sum(s))
