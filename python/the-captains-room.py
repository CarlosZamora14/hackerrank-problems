if __name__ == '__main__':
    k = int(input())
    room_number_list = list(map(int, input().split()))

    rooms = {}
    for room in room_number_list:
        rooms[room] = rooms.get(room, 0) + 1

    for room in rooms:
        if rooms[room] == 1:
            print(room)
