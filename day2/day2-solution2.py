#!/bin/python3

f = open("input.txt", "r")

draw = 3
rockPoint = 1
paperPoint = 2
scissorsPoint = 3
win = 6
currentSum = []
AcurrentSum = []

A = rockPoint
B = paperPoint
C = scissorsPoint

X = rockPoint
Y = paperPoint
Z = scissorsPoint

# Second solution


def RockPaperScissorRetardo(uno, dos):
    if uno == "A" and dos == "Z":
        return paperPoint, win
    elif uno == "A" and dos == "Y":
        return rockPoint, draw
    elif uno == "C" and dos == "X":
        return paperPoint, 0
    elif uno == "C" and dos == "Y":
        return scissorsPoint, draw
    elif uno == "B" and dos == "X":
        return rockPoint, 0
    elif uno == "B" and dos == "Z":
        return scissorsPoint, win
    elif uno == "A" and dos == "X":
        return scissorsPoint, 0
    elif uno == "B" and dos == "Y":
        return paperPoint, draw
    elif uno == "C" and dos == "Z":
        return rockPoint, win


for line in f:
    if line != "\n":
        uno = line[0]
        dos = line[2]
        resulting = RockPaperScissorRetardo(uno, dos)
        sumResult = sum(resulting)
        AcurrentSum.append(sumResult)
print(sum(AcurrentSum))
