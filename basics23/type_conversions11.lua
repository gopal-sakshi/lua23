print("10" + 1)           --> 11
print("10 + 1")           --> 10 + 1
print("-5.3e-10"*"2")     --> -1.06e-09
-- print("hello" + 1)        -- ERROR (cannot convert "hello")
--------------------------------------------------------------

line = io.read()     -- read a line
n = tonumber(line)   -- try to convert it to a number
if n == nil then
    error(line .. " is not a valid number")
else
    print(n*2)
end
--------------------------------------------------------------

-- In Lua, only nil and false are false; everything else is true, including 0 and the empty string

