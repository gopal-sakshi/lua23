names = {"Peter", "Paul", "Mary"}
grades = {Mary = 10, Paul = 7, Peter = 8}
local resp = table.sort(names, function (n1, n2)
    return grades[n1] > grades[n2]    -- compare the grades
end)

function printTable(table23)
    for k, v in pairs(table23) do
        print("k, val ====> ", k, v)
    end
end

print("resp ====> ", resp)
print("resp ====> ", printTable(grades))