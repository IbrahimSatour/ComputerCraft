function dig32()
  for i = 1, 32 do
    while turtle.detect() do
      turtle.dig()
    end
    turtle.forward() turtle.digUp() turtle.digDown()
  end
end

function dig31()
  for i = 1, 31 do
    while turtle.detect() do
      turtle.dig()
    end
    turtle.forward() turtle.digUp() turtle.digDown()
  end
end

function turnRight()
  turtle.turnRight()
  while turtle.detect() do
      turtle.dig()
  end
  turtle.forward() turtle.digUp() turtle.digDown() turtle.turnRight()
end

function turnLeft()
  turtle.turnLeft()
  while turtle.detect() do
      turtle.dig()
  end
  turtle.forward() turtle.digUp() turtle.digDown() turtle.turnLeft()
end

