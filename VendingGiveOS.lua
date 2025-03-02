while true do
  rednet.open("right")
  local order = rednet.receive()
  for i = 1, order do
    turtle.select(i)
    turtle.drop(64)
  end
end
