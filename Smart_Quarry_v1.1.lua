-- Smart Quarry v1.1
-- Quarry system with cutomizable dimensions
-- Drops cobblestone, dirt, gravel, and sand periodically
-- minmum width of 4, minimum depth of 2

-- user input

function clear()
  term.clear()
  term.setCursorPos(1,1)
end

clear() print("Do you wish to terminate cobblestone when dropped? y/n") terminate = read()
clear() print("Please define the width for you quarry in blocks") width = read()
clear() print("Please define the depth for your quarry in blocks") depth = read()
clear()

function stateWidth()
  print("Width is set to "..width)
end

function stateDepth()
  print("Depth is set to "..depth)
end

for i=5,1 do
  stateWidth() stateDepth() print("") print("Digging sequence starting in "..i) sleep(1) clear()
end

print("Digging sequence successfully initiated!") sleep(1)

walkLength = width - 1
cycles = (width / 2) - 1
layers = depth / 2

-- functions

function startPos()
  turtle.digDown() turtle.down() turtle.digDown()
end

function digLane()
  for i=1,walkLength do
    turtle.dig() turtle.forward() turtle.digDown()
  end
end

function turnRight()
  turtle.turnRight() turtle.dig() turtle.forward() turtle.digDown() turtle.turnRight()
end

function turnLeft()
  turtle.turnLeft() turtle.dig() turtle.forward() turtle.digDown() turtle.turnLeft()
end

function backToZero()
  turtle.turnRight() turtle.down() turtle.select(1) turtle.place() sleep(8) turtle.place() for i=1,walkLength do turtle.forward() end turtle.turnRight()
end

function cleanUp()
  for i=1,16 do
    turtle.select(i) fill = turtle.getItemCount()
    if fill ~= 0 then data = turtle.getItemDetail()
      if data.name == "minecraft:cobblestone" then turtle.drop(64) end
      if data.name == "minecraft:dirt" then turtle.drop(64) end
      if data.name == "minecraft:gravel" then turtle.drop(64) end
      if data.name == "minecraft:sand" then turtle.drop(64) end
    end
  end
  if terminate == ("y") then
    turtle.select(1) turtle.place() sleep(1) turtle.place()
  end
end

function digLayer()
  startPos() for i=1,cycles do digLane() turnRight() digLane() turnLeft() end digLane() turnRight() digLane()
  backToZero() cleanUp()
end

-- final command

for i=1,layers do
  digLayer()
end

for i=1,depth do
  turtle.up()
end

clear() print("Digging sequence finished successfully!")
