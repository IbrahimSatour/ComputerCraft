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
end

posUp()

repeat
  stepDown()
until turtle.inspectDown() == "minecraft:dirt"

clear() print("Big tree slain like it's nothing!")
