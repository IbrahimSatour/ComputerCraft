local right = false
local forward = false
local left = false

-- functions

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

function search()
  for i = 1, 3 do
    turtle.turnLeft()
    for n = 1, i do
      turtle.forward()
    end
  end
end

--main

while true do
  attemptRight()

  if right == false then
    attemptForward()
  end

  if right == false then
    if forward == false then
      attemptLeft()
    else
      search()
    end
  end
end
