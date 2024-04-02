function printResult(arg23) 
    for i,v in ipairs(arg23) do
        io.write(v, " ")
    end
    io.write("\n")
end

function permgen(a, n)
    if n == 0 then
        coroutine.yield(a)
    else
        for i = 1, n do
            a[n], a[i] = a[i], a[n]                     -- put i-th element as the last one
            permgen(a, n - 1)                           -- generate all permutations of the other elements
            a[n], a[i] = a[i], a[n]                     -- restore i-th element
        end
    end
end
----------------------------------------------------------------------------
function perm_create (a)
    local lengthOfTable = #a
    local co = coroutine.create(function () permgen(a, lengthOfTable) end)
    return function ()
        local code, res = coroutine.resume(co)
        print("code ====> ", code)
    return res
    end
end

function perm_wrap (a)
    local n = #a
    return coroutine.wrap(function () permgen(a, n) end)
end
----------------------------------------------------------------------------

--- use either perm_wrap    (OR)    perm_create
for p in perm_create{"aa", "bb", "cc", "dd", "ee"} do
    printResult(p)
end

----------------------------------------------------------------------------
