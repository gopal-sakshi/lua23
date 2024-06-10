Set = {}
Set.mt = {}

function Set.new (t)
    local set = {}
    setmetatable(set, Set.mt)
    for _, l in ipairs(t) do set[l] = true end
    return set
end

function Set.union (a,b)
    local res = Set.new{}
    for k in pairs(a) do res[k] = true end
    for k in pairs(b) do res[k] = true end
    return res
end

function Set.intersection (a,b)
    local res = Set.new{}
    for k in pairs(a) do
        res[k] = b[k]
    end
    return res
end
Set.mt.__add = Set.union

function Set.tostring (set)
    local s = "{"
    local sep = ""
    for e in pairs(set) do
        s = s .. sep .. e
        sep = ", "
    end
    return s .. "}"
end

function Set.print (s)
    print(Set.tostring(s))
end


s1 = Set.new{10, 20, 30, 50}
s2 = Set.new{30, 1}
s3 = s1 + s2            --- triggers the __add function in metatable
--- For each arithmetic operator there is a corresponding field name in a metatable. 
--- __add, __mul, __sub, __div, __unm (for negation), __pow (for exponentiation). 
--- 

print(getmetatable(s1))          --> table: 00672B60
print(getmetatable(s2))          --> table: 00672B60

Set.print(s3)  --> {1, 10, 20, 30, 50}