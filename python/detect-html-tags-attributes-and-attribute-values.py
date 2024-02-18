from html.parser import HTMLParser


def handle_tag(tag, attrs):
    print(tag)

    for attr in attrs:
        print('->', attr[0], '>', attr[1])


class MyHTMLParser(HTMLParser):
    def handle_starttag(self, tag, attrs):
        handle_tag(tag, attrs)

    def handle_startendtag(self, tag, attrs):
        handle_tag(tag, attrs)


n = int(input())
html_text = ''

for _ in range(n):
    html_text += input().rstrip()
    html_text += '\n'

parser = MyHTMLParser()
parser.feed(html_text)
parser.close()
