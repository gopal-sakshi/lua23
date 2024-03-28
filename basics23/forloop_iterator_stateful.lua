array11 = {"Real", "Madrid", "won", "14", "UCL", 'titles'}

function elementIterator11 (collection)
    local index = 0
    local count = #collection
    -- The closure function is returned
    return function ()
        index = index + 1
        if index <= count then
            return collection[index]        -- return the current element of the iterator
        end
    end
end

for element in elementIterator11(array11) do
    print(element)
end