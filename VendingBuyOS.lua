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

-- main

if stock == true then
  if turtle.getItemCount() then
    if type.name == "minecraft:emerald" then
      if count < 17 then
        makeTrade()
      else
        print("You can only buy a maximum of 16 stacks at a time!")
      end
    else
      print("You can only buy using emeralds!")
    end
  else
    print("No emeralds were found!")
  end
else
  print("The shop is out of stock! Sorry for the inconvenience.")
end
