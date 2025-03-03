-- functions

function clear() term.clear() term.setCursorPos(1, 1) end

function checkStock()
  local senderId, message = rednet.receive()
  if message == "check" then
    print("received")
  end
end


-- main

clear()

checkStock()
