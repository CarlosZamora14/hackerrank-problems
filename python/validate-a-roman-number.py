import re

regex_pattern = r'^M{0,3}(C{2,3}|C[DM]?|DC{0,3})?(X{2,3}|X[LC]?|LX{0,3})?(I{2,3}|I[VX]?|VI{0,3})?$'
print(str(bool(re.match(regex_pattern, input()))))
