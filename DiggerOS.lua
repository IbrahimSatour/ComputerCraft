while not turtle.detectDown("minecraft:bedrock") do
  for i = 1, 3 do turtle.digDown() turtle.down() end turtle.digDown()
  for i = 1, 2 do turtle.up() end
  turtle.dig() turtle.forward()
end
