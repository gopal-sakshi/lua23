function square(iteratorMaxCount,currentNumber)
    if currentNumber<iteratorMaxCount
    then
       currentNumber = currentNumber+1
       return currentNumber, currentNumber*currentNumber
    end
end

function squares(iteratorMaxCount)
    return square,iteratorMaxCount,0
end

--- APPROACH I ===> use pairs
for i,n in square,7,0 do
    print(i,n)
end

-- --- APPROACH II ====> use ipairs
-- for i,n in squares(5) do
--     print(i,n)
-- end
------------------------------------------------------
