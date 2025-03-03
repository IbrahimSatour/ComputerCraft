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
  if message then
    local senderId, message = rednet.receive()
    local count = message
    for i = 1, count do
      turtle.select(i)
      turtle.dropDown()
    end
  end
end

-- main

while true do

  checkStock()

  if stock == true then
    makeTade()
  end
  
  os.reboot()

end
