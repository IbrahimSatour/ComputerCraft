-- functions

function clear() term.clear() term.setCursorPos(1, 1) end

function checkStock()
  local senderId, message = rednet.receive()
  if message == "check" then
    for i = 1, 16 do
      if turtle.getItemCount(i) < 64 then
        rednet.open("right")
        rednet.send(0, "no")
        os.reboot()
      else
        rednet.open("right")
        rednet.send(0, "yes")
      end
    end
  end
end

function makeTrade()
  local senderId, message = rednet.receive()
  local count = message
  for i = 1, i do
    turtle.drop(i)
  end
end

-- main

while true do

  checkStock()

  makeTrade()

  os.reboot()

end
