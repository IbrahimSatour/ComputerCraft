local trade = true

rednet.open("right")

-- receiving count
local senderId, message = rednet.receive()
local count = message
if count > 16 then
  count = 16
end

-- checking stock
local senderId, message = rednet.receive()
if message == "checkStock" then
  for i = 1, 16 do
    if turtle.getItemCount(i) < 64 then
      rednet.send(0, "noStock")
    end
  end
end

-- filtering
local senderId, message = rednet.receive(nil, 2)
if message == "noTrade" then
  trade = false
end

-- trade
if trade == true then
  for i = 1, count do
    turtle.select(i)
    turtle.dropDown()
  end
end

-- reboot
os.reboot()
