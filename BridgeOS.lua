-- variables
local count = turtle.getItemCount(1)

-- main
while true do
  if count > 0 then
    turtle.dig()
    turtle.forward()
    turtle.select(1)
    turtle.placeDown()
  else
    break
end
