-- Smart Quarry v1.0
-- Quarry system with cutomizable dimensions
-- Drops cobblestone, gravel, and sand periodically
-- minmum width is 4, minimum depth is 2

-- user input

function clear()
  term.clear()
  term.setCursorPos(1,1)
end

clear() print("Please define the width for you quarry in blocks") width = read()
clear() print("width is set to "..width)

print("Please define the depth for your quarry in blocks") depth = read()
clear() print("Width is set to "..width) print("Depth is set to "..depth)

print("Width is set to "..width) print("Depth is set to "..depth) print("Digging sequence starting in 5") sleep(1) clear()
print("Width is set to "..width) print("Depth is set to "..depth) print("Digging sequence starting in 4") sleep(1) clear()
print("Width is set to "..width) print("Depth is set to "..depth) print("Digging sequence starting in 3") sleep(1) clear()
print("Width is set to "..width) print("Depth is set to "..depth) print("Digging sequence starting in 2") sleep(1) clear()
print("Width is set to "..width) print("Depth is set to "..depth) print("Digging sequence starting in 1") sleep(1) clear()
Print("Digging sequence successfully initiated!")

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
  turtle.turnRight() for i=1,walkLength do turtle.forward() end turtle.turnRight() turtle.down()
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
