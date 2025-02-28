-- 3x3x30 tunnel

-- functions
function clear() term.clear() term.setCursorPos(1,1) end

function step()
  while turtle.detect() do turtle.dig() sleep(0.5) end turtle.forward()
  while turtle.detectUp() do turtle.digUp() sleep(0.5) end turtle.digDown()
end

function step10() for i = 1, 10 do step() end end
function step10() for i = 1, 30 do step() end end

function turnRight() turtle.turnRight() step() turtle.turnRight() end
function turnLeft() turtle.turnLeft() step() turtle.turnLeft() end

function placeTorch() turtle.select(1) turtle.placeDown() end

function home()
  turtle.turnLeft() turtle.turnLeft()
  for i = 1, 30 do turtle.forward() end
  turtle.down()
end

-- main
turtle.up()
step10()
placeTorch()
step10()
placeTorch()
step10()
turnRight()
step30()
turnLeft()
step30()
home()
