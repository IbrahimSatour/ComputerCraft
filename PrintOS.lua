-- printer wrapping
local printer = peripheral.wrap("left")

-- checking paper and ink
if printer.getPaperLevel() == 0 then
  error("You're out of paper.")
end
if printer.getInkLevel() == 0 then
  error("You're out of ink.")
end


local success = printer.newPage()

