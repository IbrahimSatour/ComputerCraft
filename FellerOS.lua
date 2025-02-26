turtle.dig() turtle.forward()

-- check tree type
-- 1 is small - 2 is large

local treeType = 1

if turtle.inspect(minecraft:log) then
  treeType = 2
else
  treeType = 1
end
