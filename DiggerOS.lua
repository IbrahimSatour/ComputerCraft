while true do
  for i = 1, 4 do turtle.digDown() turtle.down() end turtle.digDown()

  local success, block = turtle.inspectDown()
        if success and block.name == "minecraft:bedrock" then
        print("Bedrock detected! Stopping program.")
        break
    end
  
  for i = 1, 2 do turtle.up() end
  turtle.dig() turtle.forward()
end

print("Bedrock reached successfully!")
