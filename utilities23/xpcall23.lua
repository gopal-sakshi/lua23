local club23 = { name = "RMA", stadium = "Bernabeu" }

local outputFilters = function(param1)
    print("running within xpcall ===> ", param1["name"])
    return param1["stadium"]
end

--- In 5.4.6 ===> "club23" will go and sit in param1
local ok, resp = xpcall(outputFilters, debug.traceback, club23)
print("ok ====> ", ok)
print("resp ====> ", resp)