while true do
  signal = redstone.getInput("right")
  if signal = true do
    sleep(1)
    level = turtle.detectDown()
    if level == true do
      for i=1,28 do turtle.up() end
    else 
      for i=1,28 do turtle.down() end
    end
  end
end
