--- APPROACH I
table11 = {}
metatable11 = {}
setmetatable(table11,metatable11)

--- APPROACH II
table12 = setmetatable({},{})


--- HOW IT WORKS
table13 = setmetatable({club="RMA", stadium="Bernabeu"}, {
    __index = function(table13, key)
        if key == "stadium" then
            return "SantiagoBernabeu__"
        else
            return nil
        end
    end
})
print("table values ====> ", table13["club"], table13["stadium"], table13.stadium)


mytable = setmetatable({key1 = "value1"}, {
    __index = function(mytable, key)
       if key == "key2" then
          return "meta__table__value"
       else
          return nil
       end
    end
 })
print(mytable.key1, mytable.key2)