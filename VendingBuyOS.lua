local type = turtle.getItemDetail(1)
local count = turtle.getItemCount(1)

if type.name == "minecraft:emerald" then
  print("Emerald found!")
  print(count)
end
