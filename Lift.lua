while true do
  sleep(1)
  signal = redstone.getInput("right")
  ground = turtle.detectDown()
  if signal == true then
    sleep(1)
    if ground == true then
      for i=1,28 do turtle.up() end
    else
      for i=1,28 do turtle.down() end
    end
  end
end
