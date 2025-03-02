while true do
  rednet.open("right")
  local order = rednet.receive()
  for i = 1, order do
    turtle.select(i)
    turtle.dropDown(64)
  end
end
