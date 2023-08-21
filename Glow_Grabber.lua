-- user input


clear() print("Please specify the diameter of your operation.")
diameter = read()
steps = diameter - 1
turns = (diameter / 2) - 1

clear() print("Please specify the height of your operation.")
height = read()
layers = height / 2

-- functions

function clear()
  term.clear()
  term.setCursorPos(1,1)
end

function intoPos()
  for i=1,2 do turtle.digUp() turtle.up() end
end

function turnRight()
  turtle.turnRight() turtle.dig() turtle.forward() turtle.digDown() turtle.turnRight()
end

function turnLeft()
  turtle.turnLeft() turtle.dig() turtle.forward() turtle.digDown() turtle.turnLeft()
end

function digLane()
  for i=1,steps do
    turtle.dig() turtle.forward() turtle.digDown()
  end
end

function toZero()
  turtle.turnRight() for i=1,steps do turtle.forward() end turtle.digDown() turtle.down()
end

function digLayer()
  for i=1,turns do digLane() turnRight() digLane() turnLeft() end
  digLane() turnRight() digLane() toZero()
end

-- main command

while not turtle.detectUp() do
  turtle.up()
end

intoPos()

for i=1,layers do
  digLayer()
end

while not turtle.detectDown() do
  turtle.down()
end
