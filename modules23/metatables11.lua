--- APPROACH I
table11 = {}
metatable11 = {}
setmetatable(table11,metatable11)

--- APPROACH II
table12 = setmetatable({},{})


--- HOW IT WORKS
local baseTable23 = { club="RMA", stadium="Bernabeu" }
table13 = setmetatable(baseTable23, {
    __index = function(table13, key)
        if key == "stadium_from_meta" then
            return "arey ee key table lo ledu, meta table lo undi"
        else
            return nil
        end
    end
})
-- ### Here, table13 ---> meta table                baseTable23 ----------> actual table
print("meta table values ====> ", table13["club"], table13["stadium"], table13["stadium_from_meta"])
print("actual table values ==> ", baseTable23["club"], baseTable23["stadium"])