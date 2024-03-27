-- Constructors are expressions that create & initialize tables. 
--- distinctive feature of Lua
--- one of its most useful & versatile mechanisms.

days = {"Monday", "Tuesday", "Wednesday",
"Thursday", "Friday", "Saturday", "Sunday"}

--- first element has always index 1, not 0)

print(days[1])
print(days[7])

----------------------------------------------------------

--- sine table  param = angle in radians

sintab = {math.sin(0), math.sin(30), math.sin(45), math.sin(60), math.sin(90)}
print("sin30 ===> ", sintab[2])