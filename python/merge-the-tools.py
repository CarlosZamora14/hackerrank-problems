import re


def merge_the_tools(string: str, k: int) -> None:
    pattern = '.{' + str(k) + '}'

    for match in re.findall(pattern, string):
        merge_str = ''
        for char in match:
            if char not in merge_str:
                merge_str += char

        print(merge_str)


if __name__ == '__main__':
    string, k = input(), int(input())
    merge_the_tools(string, k)
