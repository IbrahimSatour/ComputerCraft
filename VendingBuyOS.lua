local type = turtle.getItemDetail(1)
local count = turtle.getItemCount(1)

if type.name == "minecraft:emerald" then
  turtle.drop(count)
  rednet.open("right")
  rednet.send(4, count)
end
