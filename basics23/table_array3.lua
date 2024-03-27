a = {}                      -- empty table
for i=1,10                    -- create 10 new entries
    do a[i] = i*2 
end
print(a[9])                 --> 18
a["x"] = 10
print(a["x"])               --> 10
print(a["y"])               --> nil

-- a["x"] == a.x        --- use either of them
-- but NOT EQUAL TO     a[x]  (which is table indexed by the value of the variable x)      
print("table/array a ========> ", a)