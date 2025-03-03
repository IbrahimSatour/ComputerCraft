-- functions

function clear() term.clear() term.setCursorPos(1, 1) end

function checkStock()
  local senderId, message = rednet.receive()
  if message == "check" then
    for i = 1, 16 do
      if turtle.getItemCount(i) < 64 then
        rednet.open("right")
        rednet.send(0, "no")
        print("no stock")
      else
        rednet.open("right")
        rednet.send(0, "yes")
      end
    end
  end
end


-- main

while true do

  checkStock()

  os.reboot()

end
