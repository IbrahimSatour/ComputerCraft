local right = false
local forward = false
local left = false

function stepRight() trutle.turnRight() turtle.dig() turtle.forward() end
function step() turtle.dig() turtle.forward() end
function stepLeft() trutle.turnLeft() turtle.dig() turtle.forward() end

while true do
  
  if turtle.detectRight() then
    stepRight()
    right = true
  end

  if right == false then
    if turtle.detect() then
      step()
      forward = true
    end
  end

  if right == false then
    if forward == false then
      if turtle.detectLeft() then
        stepLeft()
        left = true
      end
    end
  end

end
