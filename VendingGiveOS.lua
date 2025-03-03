-- functions

function clear() term.clear() term.setCursorPos(1, 1) end

-- main

clear()

rednet.open("right")
if rednet.receive() == "check" then
  print("check received")
end
