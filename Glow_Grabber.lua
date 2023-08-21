-- variables

diameter

steps = diameter - 1

turns = (diameter / 2) - 1

-- functions

function intoPos()
  turtle.digUp() turtle.up() turtle.digUp() turtle.up()
end

function turnRight()
  turtle.turnRight() turtle.dig() turtle.forward() turtle.digDown() turtle.turnRight()
end

function turnLeft()
  turtle.turnLeft() turtle.dig() turtle.forward() turtle.digDown() turtle.turnLeft()
end

function digLane()
  for i=1,steps do
    turtle.dig() turtle.forward turtle.digDown()
  end
end

function digLayer()
  for i=1,diameter digLane() turnRight() digLane() turnLeft()

-- main command

while not turtle.detectUp() do
  turtle.up()
end

intoPos()



