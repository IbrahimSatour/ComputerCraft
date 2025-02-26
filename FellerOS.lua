-- functions

function initialPos()
  turtle.dig() turtle.forward()
end

initialPos()

-- check tree type

local treeType = 1

if turtle.inspect(minecraft:log) then
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
  
