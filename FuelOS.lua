-- refuels turtle with 10 lava buckets (10000)
-- place turtle facing lava pool, and place 10 buckets in first slot

-- functions

function steps()
  for i = 1, 10 do
    turtle.forward() turtle.select(1) turtle.placeDown()
  end
end

function comeHome()
  turtle.turnRight() turtle.turnRight()
  for i = 1, 11 do
    turtle.forward()
  end
end

function fuelUp()
  for i = 1, 10 do
    turtle.select(i) turtle.refuel()
  end
end

-- main

steps()
comeHome()
fuelUp()
clear() print("10000 Fuel Added!")
