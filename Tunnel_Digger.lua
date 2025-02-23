-- dig a simple 3x3x32 tunnel
-- start from bottom left
-- place 4 torches in first slot

-- functions

function dig32()
  for i = 1, 32 do
    while turtle.detect() do
      turtle.dig()
    end
    turtle.forward() 
    while turtle.detectUp() do
      turtle.digUp()
    end
    turtle.digDown()
  end
end

function dig31()
  for i = 1, 31 do
    while turtle.detect() do
      turtle.dig()
    end
    turtle.forward()
    while turtle.detectUp() do
      turtle.digUp()
    end
    turtle.digDown()
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

function comeHome()
  turtle.turnLeft() turtle.forward() turtle.forward() turtle.down() turtle.turnLeft()
  for i = 1, 4 do
    for i = 1, 4 do
      turtle.forward()
    end
    turtle.turnLeft() turtle.select(1) turtle.place() turtle.turnRight()
    for i = 1, 4 do
      turtle.forward()
    end
  end
end

--main

turtle.up()
dig32()
turnRight()
dig31()
turnLeft()
dig31()
comeHome()
clear() print("Tunnel cleared successfully!")
