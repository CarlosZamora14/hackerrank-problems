from html.parser import HTMLParser


class MyHTMLParser(HTMLParser):
    def handle_comment(self, data):
        type_of_comment = 'Multi-line' if '\n' in data else 'Single-line'
        print('>>>', type_of_comment, 'Comment')
        print(data)

    def handle_data(self, data):
        if '\n' == data:
            return

        print('>>> Data')
        print(data)


n = int(input())
html = ''

for _ in range(n):
    html += input().rstrip()
    html += '\n'

parser = MyHTMLParser()
parser.feed(html)
parser.close()
