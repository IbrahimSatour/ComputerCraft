function clear()
  term.clear()
  term.setCursorPos(1, 1)
end

local type = turtle.getItemDetail(1)
local count = turtle.getItemCount(1)

term.clear()
While not count == 0 then
  if type.name == "minecraft:emerald" then
    if count < 17 then
      turtle.drop(count)
      rednet.open("right")
      rednet.send(4, count)
      sleep(10)
    else
      clear()
      print("You can buy a maximum of 16 stacks at a time.")
      sleep(5)
    end
  else
    clear()
    print("No emeralds found!")
    sleep(5)
  end
else
  clear()
  print("No emeralds found!")
  sleep(5)
end
os.reboot()
