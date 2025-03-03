-- variables

local count = turtle.getItemCount(1)
local type = turtle.getItemDetail(1)
local stock = true

-- functions

function clear() term.clear() term.setCursorPos(1, 1) end

function checkStock()
  rednet.open("right")
  rednet.send(1, "check")
  local senderId, message = rednet.receive()
  if message == "no" then
    stock = false
  else
    stock = true
  end
end

function makeTrade()
  turtle.drop(1)
  rednet.open("right")
  rednet.send(1, count)
end

-- main

checkStock()

if stock == true then
  if count > 0 then
    if type.name == "minecraft:emerald" then
      if count < 17 then
        makeTrade()
      else
        print("You can only buy a maximum of 16 stacks at a time!")
        sleep(5) clear()
      end
    else
      print("You can only buy using emeralds!")
      sleep(5) clear()
    end
  else
    print("No emeralds were found in the first slot!")
    sleep(5) clear()
  end
else
  print("The shop is out of stock! Sorry for the inconvenience.")
  sleep(5) clear()
end
