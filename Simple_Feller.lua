while turtle.detect() do
  turtle.dig() turtle.digUp() turtle.up()
end

while not turtle.detectDown() do
  turtle.down()
end

print("Tree slain brutally!")
