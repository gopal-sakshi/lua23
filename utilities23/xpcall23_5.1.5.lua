--- this is lua 5.1.5; xpcall doesnt take arguments to pass... use another function

local club23 = { name = "RMA", stadium = "Bernabeu" }

local outputFilters23 = function(param1)
    print("running within xpcall ===> ", param1["name"])
    return param1["stadium"]
end

local tempFn2 = function()
    return outputFilters23(club23)
end

local tempFn3 = function()
    return outputFilters23
end

---------- THIS FAILSSSSSSSSSSSSSSSSSSSSS
local ok1, resp1 = xpcall(outputFilters23, debug.traceback, club23)
print("ok1 ====> ", ok1)
print("resp1 ====> ", resp1)

----------- THIS WORKSSSSSSSSSSSSSSSSSSSSS
local ok2, resp2 = xpcall(tempFn2, debug.traceback)
print("ok2 ====> ", ok2)
print("resp2 ====> ", resp2)


----------- THIS WORKSSSSSSSSSSSSSSSSSSSSS
local ok3, resp3 = xpcall(tempFn3, debug.traceback, club23)
print("ok3 ====> ", ok3)
print("resp3 ====> ", resp3)