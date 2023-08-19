-- functions

function posDown()
  turtle.dig() turtle.forward()
end

function stepUp()
  turtle.dig() turtle.turnRight() turtle.dig() turtle.turnLeft() turtle.digUp() turtle.up()
end

function posUp()
  turtle.dig() turtle.forward() turtle.turnRight()
end

function stepDown()
  turtle.dig() turtle.down()
end

-- main command

posDown()

while turtle.detect() do
  stepUp()
end

posUp()

while not turtle.detectDown() do
  stepDown()
end

print("Big tree slain like it's nothing!")
