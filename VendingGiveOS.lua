rednet.open("left")
if rednet.receive() == "check" then
  for i = 1, 16 do
    if not turtle.getItemDetail(i) == 64 then
      rednet.open("left")
      rednet.send(0, "no")
    else
      rednet.open("left")
      rednet.send(0, "yes")
    end
  end
end
