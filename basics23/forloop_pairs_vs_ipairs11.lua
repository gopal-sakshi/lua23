u = {}
u[-1] = "idi minus 1"
u[0] = "idi sunna"
u[1] = "okati"
u[3] = "moodu"
u[2] = "rendu"
u[4] = "naalugu"
u[6] = "aaru"
u["hello"] = "ikaada key oka string"

if arg[1] == "ipairs" then
    for key, value in ipairs(u) do print(key, value) end
elseif arg[1] == "pairs" then
    for key, value in pairs(u) do print(key, value) end
else
    print("edo oka argument ivvu bhayyaaa")
end

-- RUN THIS ============> lua basics23/forloop_pairs_vs_ipairs11.lua ipairs
