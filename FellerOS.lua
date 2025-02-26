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

-- main

initialPos()

-- check tree type
local blockType = turtle.inspect()
if blockType.name == "minecraft:oak_log" or "minecraft:spruce_log" or "minecraft:birch_log" or "minecraft:jungle_log" or "minecraft:acacia_log" or "minecraft:dark_oak_log" then
  treeSmall = false
end

-- treeSmall true
if treeSmall == true then
  while turtle.detectUp() do
    turtle.digUp() turtle.up()
  end
  while not turtle.detectDown() do
  turtle.down()
  end
end

-- treeSmall false

if treeSmall == false then
  while turtle.detectUp() do
    stepUp()
  end
  shift()
  for i = 1, steps do
    stepDown()
  end
end
