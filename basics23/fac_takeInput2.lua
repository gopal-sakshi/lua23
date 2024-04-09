print("enter some numbers:")
a = io.read("*number")        -- read a number
b = io.read("*number")        -- read a number
-- c = io.read("*string")
print("values entered ===> ", a, b)


-- https://www.lua.org/pil/21.1.html
-- 21.1 – The Simple I/O Model

-- "*all"	reads the whole file
-- "*line"	reads the next line
-- "*number"	reads a number
-- num	reads a string with up to num characters
