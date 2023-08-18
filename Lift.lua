while true do
  while redstone.getInput() == true do
    sleep(1)
    while turtle.detectDown() == true do
      for i=1,28 do turtle.up() end
    else 
      for i=1,28 do turtle.down() end
    end
  end
end
