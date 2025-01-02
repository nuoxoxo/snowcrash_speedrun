lines = open(0).read().splitlines()
res = []
for line in lines:
    a = line.split()[1:]
    HEX = line.split()[1]
    if HEX == '7f' and res:
        res.pop()
    else:
        res.append(chr(int(HEX,16)))
    print(''.join(res))

