-- functions
function clear() term.clear() term.setCursorPos(1,1) end

function step()
  while turtle.detect() do turtle.dig() sleep(0.5) end turtle.forward()
  while turtle.detectUp() do turtle.digUp() sleep(0.5) end turtle.digDown()
end

function step8() for i = 1, 8 do step() end end
function step32() for i = 1, 32 do step() end end

function turnRight() turtle.turnRight() step() turtle.turnRight() end
function turnLeft() turtle.turnLeft() step() turtle.turnLeft() end

function light()
  local type = turtle.getItemDetail(1)
  if type.name == "minecraft:torch" then
    turtle.select(1) turtle.placeDown()
  end
end

function home()
  turtle.turnLeft() turtle.turnLeft()
  for i = 1, 32 do turtle.forward() end
  turtle.down()
end

-- main
turtle.up()
for i = 1, 3 do
  step8() light()
end
step8()
turnRight()
step32()
turnLeft()
step32()
home()
