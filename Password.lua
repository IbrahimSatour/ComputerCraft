password = "superman"

print("Please enter password")
input = read("*")

if input == password then
  print("Access granted!")
  redstone.setOutput("back", true)
  sleep(5)
  redstone.setOutput("back", false)
  
