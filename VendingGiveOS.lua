-- variables

local stock = true

-- functions

function clear() term.clear() term.setCursorPos(1, 1) end

function checkStock()
  local senderId, message = rednet.receive()
  if message == "check" then
    for i = 1, 16 do
      if turtle.getItemCount(i) < 64 then
        rednet.open("right")
        rednet.send(0, "no")
        stock = false
      end
    end
  end
end

function makeTrade()
  local senderId, message = rednet.receive()
  local count = message
  local num = tonumber(count)
  for i = 1, num do
    turtle.select(i)
    turtle.dropDown()
  end
  local name1 = "Sold"
  local name2 = "stacks."
  print(name1, num, name2)
end

-- main

while true do

  rednet.open("right")

  checkStock()

  if stock == true then
    makeTrade()
  end

end
