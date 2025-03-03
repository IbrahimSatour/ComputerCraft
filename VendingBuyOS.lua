-- variables

local count = turtle.getItemCount(1)
local type = turtle.getItemDetail(1)
local stock = true

-- functions

function clear() term.clear() term.setCursorPos(1, 1) end

function checkStock()
  rednet.open("right")
  rednet.send(1, "check")
  local senderId, message = rednet.receive(nil, 1)
  if message == "no" then
    stock = false
  end
end

function makeTrade()
  turtle.drop()
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
        local name1 = "Purchasing"
        local name2 = "stacks..."
        clear() print(name1, count, name2) sleep(5) clear()
      else
        clear() print("You can only buy a maximum of 16 stacks at a time!")
        sleep(5) os.reboot()
      end
    else
      clear() print("You can only buy using emeralds!")
      sleep(5) os.reboot()
    end
  else
    clear() print("No emeralds were found in the first slot!")
    sleep(5) os.reboot()
  end
else
  clear() print("The shop is out of stock! Sorry for the inconvenience.")
  sleep(5) os.reboot()
end

