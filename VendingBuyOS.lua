-- variables

local count = turtle.getItemCount(1)
local type = turtle.getItemDetail(1)
local stock = false

-- functions

function clear() term.clear() term.setCursorPos(1, 1) end

function checkStock()
  rednet.open("left")
  rednet.send("check")
  if rednet.receive() == yes then
    stock = true
  end
end

function makeTrade()
  turtle.drop(1)
  rednet.open("right")
  rednet.send(1, count)
end
