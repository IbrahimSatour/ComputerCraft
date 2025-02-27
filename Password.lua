-- set password
password = "superman"

-- functions
function clear() term.clear() term.setCursorPos(1,1) end

-- main command
while true do
  print("Please enter password...")
  input = read("*")
  if input == password then
    print("Access granted.")
    redstone.setOutput("back", true)
    sleep(5)
    redstone.setOutput("back", false)
    clear()
  else
    print("Access denied.")
    sleep(5)
    clear()
  end
end
