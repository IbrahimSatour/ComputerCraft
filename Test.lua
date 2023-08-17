for i=1,16 do
    turtle.select(i) fill = turtle.getItemCount()
    if fill ~= 0 then data = turtle.getItemDetail()
      if data.name == "minecraft:cobblestone" or "minecraft:dirt" or "minecraft:gravel" or "minecraft:sand" then turtle.drop(64) end
    end
end
