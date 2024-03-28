fruits = {"banana","orange","apple", "avocado", "watermelon", "jackfruit"}
--- total 6 elements
print("Concatenated string ",table.concat(fruits))
print("Concatenated string ",table.concat(fruits,", "))
print("Concatenated string ",table.concat(fruits,", ", 2,5))


table.insert(fruits,"mango")                -- insert a fruit at the end
table.insert(fruits,2,"grapes")                 --insert fruit at index 2
--- insert 2 elements

print("The last element is",fruits[8])
table.remove(fruits)
print("The previous last element is",fruits[8])

----------------------------------------------------------------------

for k,v in ipairs(fruits) do
    io.write(k,")", v, "  ")
end
print("")

table.sort(fruits)
print("table after sorting 23 =====> ")

for k,v in ipairs(fruits) do
    io.write(k,")", v, "  ")
end
print("")