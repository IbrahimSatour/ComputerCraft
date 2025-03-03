-- functions

function clear() term.clear() term.setCursorPos(1, 1) end

-- main

clear()

rednet.open("right")
if rednet.receive() == "check" then
  for i = 1, 16 do
    if turtle.getItemDetail(i) < 64 then
      rednet.open("right")
      rednet.send(0, "no")
    end
  end
end
