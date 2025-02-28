-- variables
local count = turtle.getItemCount(1)

-- functions
function step() turtle.dig() turtle.forward() turtle.select(1) turtle.placeDown() end
function finish()
  turtle.turnLeft() step()
  for i = 1, 3 do turtle.turnRight() step() step() end
  for i = 1, 2 do turtle.turnRight() step() end
end

-- main
while count > 8 do
  step()
end
finish()
