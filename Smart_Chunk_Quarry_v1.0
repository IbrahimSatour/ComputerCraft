-- Smart Chunk Quarry v1.0
-- Removes a chunk (63 height, FR direction)
-- Drops cobblestone, gravel, and sand periodically

do

  for i = 1,32 do
      
    -- digging sequence start
        
    do
      
      turtle.digDown()
      turtle.down()
      turtle.digDown()
        
      for i = 1,7 do
         
        for i = 1,15 do
          turtle.dig()
          turtle.forward()
          turtle.digDown()
        end
        
        turtle.turnRight()
        turtle.dig()
        turtle.forward()
        turtle.turnRight()
        turtle.digDown()
        
        for i = 1,15 do
          turtle.dig()
          turtle.forward()
          turtle.digDown()
        end
        
        turtle.turnLeft()
        turtle.dig()
        turtle.forward()
        turtle.turnLeft()
        turtle.digDown()
      end
      
      for i = 1,15 do
        turtle.dig()
        turtle.forward()
        turtle.digDown()
      end
      
      turtle.turnRight()
      turtle.dig()
      turtle.forward()
      turtle.turnRight()
      turtle.digDown()
      
      for i = 1,15 do
        turtle.dig()
        turtle.forward()
        turtle.digDown()
      end
      
      turtle.turnRight()
      for i = 1,15 do
        turtle.forward()
      end
      turtle.turnRight()
      turtle.down()
        
    end

    -- digging sequence end
    
    -- Clear inventory start
    
    for i = 1,16 do
        
      turtle.select(i)
      fill = turtle.getItemCount()
      
      if fill ~= 0 then
      
        data = turtle.getItemDetail()
      
        if data.name == "minecraft:cobblestone" then
          turtle.drop(64)
        end
        
        if data.name == "minecraft:dirt" then
          turtle.drop(64)
        end
      
        if data.name == "minecraft:gravel" then
          turtle.drop(64)
        end
        
        if data.name == "minecraft:sand" then
          turtle.drop(64)
        end
        
      end
        
    end
    
    -- clear inventory end

  end

  -- journey back start

  for i = 1,63 do
    turtle.up()
  end

  -- journey back end

end
