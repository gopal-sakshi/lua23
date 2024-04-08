local names = {"peter", "paul", "mary", "newton", "planck", "bohr", "guru"}
local grades = { mary = 10, paul = 7, peter = 8, newton = 12, planck = 9, bohr = 11, guru = 2 }

function printTable(table23)
    for k,v in pairs(table23) do
        print("k, val ====> ", k, v)
    end
end
-- printTable(grades)
function sortbygrade (grades11)
    -- return table.sort(names11, function (n1, n2)
    --     return grades11[n1] > grades11[n2]    -- compare the grades
    -- end)
    return table.sort(grades11)
end


-- print('before sorting ====> ', printTable(grades))
local sortedGrades = sortbygrade(grades)
-- print('before sorting ====> ', sortedGrades)

-- printTable(sortedGrades)
printTable(grades)
-- local sorted23 = sortbygrade(names, grades)
-- print("sorted23 ======> ", grades)

