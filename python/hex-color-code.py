import re

hex_pattern = r'#[0-9a-f]{3}([0-9a-f]{3})?'
selector_pattern = r'(\}(.+?)\{|^\s*(.+?)\{)'

n = int(input())

css_code = ''

for _ in range(n):
    css_code += input()

selector_ranges = {}
for match in re.finditer(selector_pattern, css_code):
    selector_ranges[match.start()] = match.end() - 1

for match in re.finditer(hex_pattern, css_code, flags=re.IGNORECASE):
    is_selector = False
    for rng in selector_ranges:
        if match.start() >= rng and match.end() - 1 <= selector_ranges[rng]:
            is_selector = True
            break

    if not is_selector:
        print(match.group())
