-- functions

function clear() term.clear() term.setCursorPos(1, 1) end

function checkStock()
  local senderId, message = rednet.receive()
  if message == "check" then
    for 1, 16 do
      if turtle.getItemCount(i) < 64 then
        rednet.open("right")
        rednet.send("no")
      end
    end
  end
end


-- main

clear()

checkStock()
