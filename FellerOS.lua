-- variables

local treeSmall = true

local steps = 0

-- functions

function initialPos()
  turtle.dig() turtle.forward()
end

function stepUp()
  turtle.dig() turtle.digUp() turtle.up()
  steps = steps + 1
end

function stepDown()
  turtle.digDown() turtle.down() turtle.dig()
end

function shift()
  turtle.dig() turtle.turnRight() turtle.dig() turtle.forward() turtle.turnLeft() turtle.dig()
end

function clear()
  term.clear()
  term.setCursorPos(1,1)
end

-- main

initialPos()

-- check tree type
if turtle.inspect("minecraft:oak_log") then
  treeSmall = false
elseif turtle.inspect("minecraft:spruce_log") then
  treeSmall = false
elseif turtle.inspect("minecraft:birch_log") then
  treeSmall = false
elseif turtle.inspect("minecraft:jungle_log") then
  treeSmall = false
elseif turtle.inspect("minecraft:acacia_log") then
  treeSmall = false
elseif turtle.inspect("minecraft:dark_oak_log") then
  treeSmall = false
end

-- treeSmall true
clear() print("Small tree detected!")
if treeSmall == true then
  while turtle.detectUp() do
    turtle.digUp() turtle.up()
  end
  while not turtle.detectDown() do
  turtle.down()
  end
end

-- treeSmall false
clear() print("Large tree detected!")
if treeSmall == false then
  while turtle.detectUp() do
    stepUp()
  end
  shift()
  for i = 1, steps do
    stepDown()
  end
end

-- end
clear() print("Tree chopped successfully!")
