import xml.etree.ElementTree as etree

maxdepth = 0


def depth(elem, level):
    global maxdepth

    level += 1
    maxdepth = max(level, maxdepth)

    for child in elem:
        depth(child, level)


if __name__ == '__main__':
    n = int(input())
    xml = ''

    for _ in range(n):
        xml += input() + '\n'
    tree = etree.ElementTree(etree.fromstring(xml))

    depth(tree.getroot(), -1)
    print(maxdepth)
