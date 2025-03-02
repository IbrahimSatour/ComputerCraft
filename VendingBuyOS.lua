local type = turtle.getItemDetail(1)
local count = turtle.getItemCount(1)

term.clear()
if type.name == "minecraft:emerald" then
  if count < 17 then
    turtle.drop(count)
    rednet.open("right")
    rednet.send(4, count)
  else
    print("You can buy a maximum of 16 stacks at a time.")
  end
else
  print("No emeralds found!")
end
sleep(10)
os.reboot()
