-- variables

local treeSmall = true
local steps = 0

-- functions

function initialPos() turtle.dig() turtle.forward() end
function stepUp() turtle.dig() turtle.digUp() turtle.up() steps = steps + 1 end
function stepDown() turtle.digDown() turtle.down() turtle.dig() end
function shift() turtle.dig() turtle.turnRight() turtle.dig() turtle.forward() turtle.turnLeft() turtle.dig() end
function clear() term.clear() term.setCursorPos(1,1) end

-- main

initialPos()

-- check tree type
turtle.select(1)
if turtle.compare() == true then
  treeSmall = false
else
  treeSmall = true
end






-- treeSmall true
if treeSmall == true then
  clear() print("Small tree detected.")
  while turtle.detectUp() do turtle.digUp() turtle.up() end
  while not turtle.detectDown() do turtle.down() end
end

-- treeSmall false
if treeSmall == false then
  clear() print("Large tree detected.")
  while turtle.detectUp() do stepUp() end
  shift()
  for i = 1, steps do stepDown() end
end

print("Tree chopped successfully!")
