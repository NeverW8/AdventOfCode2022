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

# First solution


def RockPaperScissor(uno, dos):
    if uno == "A" and dos == "Z":
        return scissorsPoint, 0
    elif uno == "A" and dos == "Y":
        return paperPoint, win
    elif uno == "C" and dos == "X":
        return rockPoint, win
    elif uno == "C" and dos == "Y":
        return paperPoint, 0
    elif uno == "B" and dos == "X":
        return rockPoint, 0
    elif uno == "B" and dos == "Z":
        return scissorsPoint, win
    elif uno == "A" and dos == "X":
        return rockPoint, draw
    elif uno == "B" and dos == "Y":
        return paperPoint, draw
    elif uno == "C" and dos == "Z":
        return scissorsPoint, draw


for line in f:
    if line != "\n":
        uno = line[0]
        dos = line[2]
        result = RockPaperScissor(uno, dos)
        sumOfResult = sum(result)
        currentSum.append(sumOfResult)
print(sum(currentSum))
