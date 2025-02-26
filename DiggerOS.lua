function test()
  local data = turtle.inspectDown()
  if data.name == "minecraft:bedrock" then break end
end

while true do
  for i = 1, 4 do turtle.digDown() turtle.down() end turtle.digDown()
  test()
  for i = 1, 2 do turtle.up() end
  turtle.dig() turtle.forward()
end

print("Bedrock reached successfully!")
