line = open(0, 'rb').read().strip()
print('res/', ''.join(chr(_ - i) for i, _ in enumerate(line)))
