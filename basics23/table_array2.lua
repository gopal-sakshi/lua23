--- tables in lua ===> dynamically allotted object

a = {}
a["x"] = 10
b = a                       -- `b' refers to the same table as `a'
print(b["x"])               --> 10
b["x"] = 20
print(a["x"])               --> 20
a = nil                     -- now only `b' still refers to the table
b = nil                     -- now there are no references left to the table
                            --- When a program has no references to a table left
                            --- Lua memory management will eventually delete the table and reuse its memory.