signal = redstone.getInput("right")
ground = turtle.detectDown()

while true do
  if signal == true then
    if ground == true then
      for i=1,28 do turtle.up() end
    else
      for i=1,28 do turtle.down() end
    end
  end
end
