a, s = ord('a'), 'cdiiddwpgswtgt'
for i in range(26):
    print(i, ''.join(chr(a + (ord(c) - a + i) % 26) for c in s))
