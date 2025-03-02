local right = false
local forward = false
local left = false

function step() turtle.dig() turtle.forward() end

function attemptRight()
  turtle.turnRight()
  if turtle.detect() then
    step()
    right = true
  else
    turtle.turnLeft()
    right = false
  end
end

function attemptForward()
  if turtle.detect() then
    step()
    forward = true
  else
    forward = false
  end
end

function attemptLeft()
  turtle.turnLeft()
  if turtle.detect() then
    step()
    left = true
  else
    os.reboot()
  end
end

while true do
  attemptRight()

  if right == false then
    attemptForward()
  end

  if right == false then
    if forward == false then
      attemptLeft()
    end
  end

end
