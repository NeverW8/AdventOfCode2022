-- Open the input file
local inputFile = io.open("input.txt", "r")

-- Initialize the variables to keep track of the highest sums seen and their group indices
local highestSums = {0, 0, 0}
local highestSumIndices = {0, 0, 0}

-- Initialize the variables to keep track of the current sum and group index
local currentSum = 0
local currentGroupIndex = 0

-- Iterate over each line in the file
for line in inputFile:lines() do
  -- If the line is empty, we've reached the end of a group
  if line == "" then
    -- Update the highest sums and group indices if necessary
    if currentSum > highestSums[1] then
      highestSums[3] = highestSums[2]
      highestSums[2] = highestSums[1]
      highestSums[1] = currentSum
      
      highestSumIndices[3] = highestSumIndices[2]
      highestSumIndices[2] = highestSumIndices[1]
      highestSumIndices[1] = currentGroupIndex
    elseif currentSum > highestSums[2] then
      highestSums[3] = highestSums[2]
      highestSums[2] = currentSum
      
      highestSumIndices[3] = highestSumIndices[2]
      highestSumIndices[2] = currentGroupIndex
    elseif currentSum > highestSums[3] then
      highestSums[3] = currentSum
      
      highestSumIndices[3] = currentGroupIndex
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

-- Check if the last group has one of the highest sums
if currentSum > highestSums[1] then
  highestSums[3] = highestSums[2]
  highestSums[2] = highestSums[1]
  highestSums[1] = currentSum
  
  highestSumIndices[3] = highestSumIndices[2]
  highestSumIndices[2] = highestSumIndices[1]
  highestSumIndices[1] = currentGroupIndex
elseif currentSum > highestSums[2] then
  highestSums[3] = highestSums[2]
  highestSums[2] = currentSum
  
  highestSumIndices[3] = highestSumIndices[2]
  highestSumIndices[2] = currentGroupIndex
elseif currentSum > highestSums[3] then
  highestSums[3] = currentSum
  
  highestSumIndices[3] = currentGroupIndex
end

-- Close the input file
inputFile:close()

-- Print the indices of the groups with the highest sums
print("The second solution is:", highestSums[1] + highestSums[2] + highestSums[3])