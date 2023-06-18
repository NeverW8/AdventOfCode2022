#!/bin/python3
f = open('input.txt', 'r')

chungus = 0
total_sum = 0
biggest_loser = 0
array_1 = []

# First challenge
for line in f:
    if line == '\n':
        if total_sum > chungus:
            chungus = total_sum
            biggest_loser = chungus
        array_1.append(total_sum)
        total_sum = 0
        continue
    number = int(line)
    total_sum += number
print("The answer to the first challenge is:", biggest_loser)


# Second challenge
sorting = sorted(array_1, reverse=True)
largest = sum(sorting[:3])

print("The answer to the second challenge is:", largest)
