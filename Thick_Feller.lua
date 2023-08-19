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

-- main command

posDown()

while turtle.detect() do
  stepUp()
end

posUp()

while not turtle.inspectDown("minecraft:dirt") do
  stepDown()
end


print("Big tree slain like it's nothing!")
