local right = false
local forward = false
local left = false

function step() turtle.dig() turtle.forward() end

function attemptRight()
  turtle.turnRight()
  if turtle.detect() then
    step()
  else
    turtle.turnLeft()
  end
end

function attemptForward()
  if turtle.detect() then
    step()
  end
end

function attemptLeft()
  turtle.turnLeft()
  if turtle.detect() then
    step()
  else
    os.reboot()
  end
end
