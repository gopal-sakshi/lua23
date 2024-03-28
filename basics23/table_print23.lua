function dump23(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. dump23(v) .. ','
       end
       return s .. '} '
    else
       return tostring(o)
    end
end


local people = {
    { name = "ramos", position = "center back", country = "spain" },
    { name = "modric", position = "midfielder", country = "croatia" },
    { name = "kroos", position = "midfield", country = "germany" },
    { name = "Benz", position = "striker", country = "france" },
}
 
print("players ========>:", dump23(people))

print("modric position ====> ", people[2]["position"])