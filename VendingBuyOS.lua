-- variables

local count = turtle.getItemCount(1)
local type = turtle.getItemDetail(1)
local stock = true

-- functions

function clear() term.clear() term.setCursorPos(1, 1) end

-- main

rednet.open("right")

rednet.send(1, "check")
local senderId, message = rednet.receive(nil, 1)
if message == "no" then
  stock = false
end

if stock == false then
  rednet.send(1, count)
  rednet.send(1, "noTrade")
  clear() print("The shop is out of stock! Sorry for the inconvenience.")
  sleep(5) os.reboot()
end

if count == 0 then
  rednet.send(1, count)
  rednet.send(1, "noTrade")
  clear() print("No emeralds were found in the first slot!")
  sleep(5) os.reboot()
end

if not (type.name == "minecraft:emerald") then
  rednet.send(1, count)
  rednet.send(1, "noTrade")
  clear() print("You can only buy using emeralds!")
  sleep(5) os.reboot()
end

if count > 16 then
  rednet.send(1, count)
  rednet.send(1, "noTrade")
  clear() print("You can only buy a maximum of 16 stacks at a time!")
  sleep(5) os.reboot()
end

turtle.drop()
count = tonumber(count)
rednet.send(1, count)
