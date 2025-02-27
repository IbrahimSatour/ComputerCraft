-- functions
function initialPos() turtle.up() end
function clear() term.clear() term.setCursorPos(1,1) end
function placeTorch() turtle.turnRight() turtle.select(1) turtle.place() turtle.turnLeft() end

function step()
  while turtle.detect() do turtle.dig() sleep(0.5) end
  turtle.forward()
  while turtle.detectUp() do turtle.digUp() sleep(0.5) end
  turtle.digDown()
end

function turnAround()
  turtle.turnRight()
  while turtle.detect() do turtle.dig() sleep(0.5) end
  turtle.forward()
  while turtle.detectUp() do turtle.digUp() sleep(0.5) end
  turtle.digDown()
  turtle.turnRight()
end

-- user input
clear() print("Welcome to TunnelOS!") sleep(1) print("Please enter the desired length for your tunnel...")
local length = read("*")
clear() print("Tunnel length is set to "..length) sleep(1) print("Initiating mining sequence...") sleep(1)
print("Mining sequence in progress...")

-- main
initialPos()

for i = 1, length do
  step()
end

turnAround()

while true do
  if length > 10 do
    for i = 1, 10 do
      step()
    end
    placeTorch()
    length = length - 10
  end
end
