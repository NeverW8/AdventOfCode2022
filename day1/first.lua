#!/bin/lua
-- Open the input file
local inputFile = io.open("input.txt", "r")

-- Initialize the variables to keep track of the highest sum seen and its group index
local highestSum = 0
local highestSumIndex = 0

-- Initialize the variables to keep track of the current sum and group index
local currentSum = 0
local currentGroupIndex = 0

-- Iterate over each line in the file
for line in inputFile:lines() do
  -- If the line is empty, we've reached the end of a group
  if line == "" then
    -- Update the highest sum and group index if necessary
    if currentSum > highestSum then
      highestSum = currentSum
      highestSumIndex = currentGroupIndex
    end
    
    -- Reset the current sum and increment the current group index
    currentSum = 0
    currentGroupIndex = currentGroupIndex + 1
  else
    -- Otherwise, add the numbers in the line to the current sum
    for number in line:gmatch("%d+") do
      currentSum = currentSum + tonumber(number)
    end
  end
end

-- Check if the last group has the highest sum
if currentSum > highestSum then
  highestSum = currentSum
  highestSumIndex = currentGroupIndex
end

-- Close the input file
inputFile:close()

-- Print the index of the group with the highest sum
print("The first solution is:" .. highestSum)