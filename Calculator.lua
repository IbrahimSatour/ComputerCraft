-- functions

function clear()
  term.clear()
  term.setCursorPos(1,1)
end

-- main command

print("Please insert your first number.") input1 = read() clear() print(input1)
print("Please choose your desired operation.") inputSign = read() clear() print(input1 inputSign)
print("Please insert your second number.") input2 = read() clear()

result = input1 inputSign input2
print(result)
sleep(4)
