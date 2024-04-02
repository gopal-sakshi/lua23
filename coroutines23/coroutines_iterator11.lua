function printResult(arg23) 
    for i,v in ipairs(arg23) do
        io.write(v, " ")
    end
    io.write("\n")
end
-- LOGIC ==>    Put each array element in the last position
---             in turn, and recursively generate all permutations of the remaining elements.
function permgen(a, n)
    if n == 0 then
        printResult(a)
    else
        for i = 1, n do
            a[n], a[i] = a[i], a[n]                     -- put i-th element as the last one
            permgen(a, n - 1)                           -- generate all permutations of the other elements
            a[n], a[i] = a[i], a[n]                     -- restore i-th element
        end
    end
end

permgen({1,2,3,4},4)