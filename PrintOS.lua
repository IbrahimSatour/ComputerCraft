-- printer wrapping
local printer = peripheral.wrap("left")

-- checking paper and ink
if printer.getPaperLevel() == 0 then
  error("You're out of paper.")
end
if printer.getInkLevel() == 0 then
  error("You're out of ink.")
end

-- print
if printer.newPage() then
  printer.write("a")
  
  printer.setCursorPos(1, 3)
  printer.write("a")

  printer.setPageTitle("a")
  printer.endPage()
else
  error("Page could not be created.")
end
