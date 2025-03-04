-- variables

local stock = true
local trade = true

-- functions

function clear() term.clear() term.setCursorPos(1, 1) end

-- main

rednet.open("right")

local senderId, message = rednet.receive()
if message == "check" then
  for i = 1, 16 do
    if turtle.getItemCount(i) < 64 then
      rednet.send(0, "no")
      stock = false
    end
  end
end

if stock == false then
  os.reboot()
end

local senderId, message = rednet.receive(nil, 1)
if message == "noTrade" then
  trade = false
end

local senderID, message = rednet.receive()
local count = message
for i = 1, count do
  turtle.select(i)
  turtle.dropDown()
end

os.reboot()
