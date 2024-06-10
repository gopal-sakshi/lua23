a = {}                  -- create a table and store its reference in `a'
k = "x"
a[k] = 10               -- new entry, with key="x" and value=10
a[20] = "great"         -- new entry, with key=20 and value="great"
print(a["x"])           --> 10
print(a[20])
print("--------------------------------------------")
k = 20
print(a[k])                 --> "great"
a["x"] = a["x"] + 1         -- increments entry "x"
print(a["x"])               --> 11
print("--------------------------------------------")

local clubTable23 = { name = "real madrid", ["manager"] = "ancelotti" }
print("access table values1 ===> ", clubTable23.name, clubTable23["name"])
print("access table values2 ===> ", clubTable23["manager"], clubTable23.manager)
