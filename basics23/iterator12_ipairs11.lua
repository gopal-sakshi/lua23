function iter (a, i)
    i = i + 1
    local v = a[i]
    if v then
        return i, v
    end
end

function ipairs11 (a)
    return iter, a, 0
end

a = {"okati", "rendu", "moodu", "naalugu", "aidu", "aaru"}
for i, v in ipairs11(a) do
    print(i, v)
end