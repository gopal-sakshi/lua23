function savePlayer(player)
    print("player name ", player)
    -- local file, err = io.open("basics23/file23_high_score.txt", 'r')     --- read mode
    -- local file, err = io.open("basics23/file23_high_score.txt", 'w')     --- write mode    
    local file, err = io.open("basics23/file23_high_score.txt", 'a')        --- append mode
    if file then
        file:write(player)
        file:write('\n')
        file:close()
    else
        print("error23 =====> ", err) -- not so hard?
    end
end


array11 = {"Benz", "Luka", "Kroos", "Marcelo", "CR7" }

for i,v in ipairs(array11) do
    print("index23 & value23 =====> ", i, v)
    savePlayer(i..'__'..v)
end