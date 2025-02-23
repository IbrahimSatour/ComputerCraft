-- variables

height = 0

-- functions

function posDown()
  turtle.dig() turtle.forward()
end

function stepUp()
  turtle.dig() turtle.digUp() turtle.up()
end

function posUp()
  turtle.turnRight() turtle.dig() turtle.forward() turtle.turnLeft()
end

function stepDown()
  turtle.dig() turtle.digDown() turtle.down()
end

function clear()
  term.clear()
  term.setCursorPos(1,1)
end

-- main command

posDown()

while turtle.detect() do
  stepUp()
  height = height + 1
end

posUp()

for i=1,height do
  stepDown()
end

turtle.dig()

clear() print("Big tree slain like it's nothing!")
