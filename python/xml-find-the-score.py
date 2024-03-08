import xml.etree.ElementTree as etree


def get_attr_number(node) -> int:
    score = len(node.attrib)

    for child in node:
        score += get_attr_number(child)

    return score


if __name__ == '__main__':
    xml = input()
    tree = etree.ElementTree(etree.fromstring(xml))
    root = tree.getroot()
    print(get_attr_number(root))
