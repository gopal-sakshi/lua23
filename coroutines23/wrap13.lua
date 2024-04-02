local function func23(clubsList)
    print("started coroutine wrap")
    return coroutine.wrap(function()
        for _, club23 in pairs(clubsList) do
            print("rcvd element in interation ===> ", club23)
            coroutine.yield(club23)
        end
    end)
end
---------------------------------------------------
local clubs12 = {
    spain = {"RMA", "Barca", "Atleti", "Sevilla"},
    england = { "ManU", "Liverpool" },
    italy = { "Juve", "AC Milan", "Inter" },
    germany = { "Bayern", "Dortmund" }
}

local clubs13 = { }
clubs13["spain"] = { "RMA", "Barca", "Atleti" }
clubs13["england"] = { "ManU", "Liverpool", "Arsenal" }
---------------------------------------------------


for blah in func23(clubs13) do
    print("whats happening ===> ", blah)
end
