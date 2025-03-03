rednet.open("right")
if rednet.receive() == "check" then
  for i = 1, 16 do
    if not turtle.getItemDetail(i) == 64 then
      rednet.open("right")
      rednet.send(0, "no")
    else
      rednet.open("right")
      rednet.send(0, "yes")
    end
  end
end
