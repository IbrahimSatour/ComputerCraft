-- variables

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
local treeType = 1
if turtle.inspect(minecraft:oak_log, minecraft:spruce_log, minecraft:birch_log, minecraft:jungle_log, minecraft:acacia_log, minecraft:dark_oak_log) then
  treeType = 2
else
  treeType = 1
end

-- treeType 1
if treeType == 1 then
  while turtle.detectUp() do
    turtle.digUp() turtle.up()
  end
  while not turtle.detectDown() do
  turtle.down()
  end
end

-- treeType 2

if treeType == 2 then
  while turtle.detectUp() do
    stepUp()
  end
  shift()
  for i = 1, steps do
    stepDown()
  end
end
