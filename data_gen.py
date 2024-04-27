# Generate all pairs of integers between 2 and 20
pairs = [(i, j) for i in range(2, 21) for j in range(2, 21)]

# Sort pairs by the sum of their elements
sorted_pairs = sorted(pairs, key=lambda x: x[0] + x[1])

# Print each pair on a new line
for pair in sorted_pairs:
    print(str(pair[0]) + " " + str(pair[1]))

