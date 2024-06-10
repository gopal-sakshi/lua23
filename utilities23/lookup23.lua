local _M = {}
local stringx       = require "pl.stringx"
local trim          = stringx.strip
local string        = require "string"
local gmatch        = string.gmatch
local table         = require "table"
local table_insert  = table.insert
local tableDump23   = require("printTable23")

local function Tree(options)
    local a
    if (options["unique"] == true) then
        a = {}
    end

    return {
        c = {},
        a = a,
    }
end

local function uniquelist(a1, a2)
    local l = {}
    local t = {}

    for _, a in ipairs({a1, a2}) do
        for _, v in ipairs(a) do
            if (not t[v]) then
                t[v] = 1
                -- print("t, v =====> ", t, v)
                table_insert(l, v)
            end
        end
    end

    print("uniquelist =====> ", tableDump23(l))

	return l
end

local function generateTree23(mapArg11)
    local options23 = {    ["name"]   = "router", ["unique"] = true }
    local m = Tree(options23)
    for cat, mapping in pairs(mapArg11) do
        local n = m
        cat = trim(cat) .. '/'
        for l in gmatch(cat, "(.-)/") do
            local i = trim(l)	-- get rid of whitespaces
            if not n["c"][i] then
                n["c"][i] = Tree(options23)
            end
            n = n["c"][i]
        end
        if (options23["unique"] == true) then
            n["a"] = uniquelist(n["a"], mapping)
        else
            n["a"] = mapping
        end
    end
    print("generateTree23 =====> ", tableDump23(m))
    return m
end

local function createLookup(categorymap23)
    print("create lookup ki vachaavu ", categorymap23["xpl/homescreen/news"][1])
    local catTree23 = generateTree23(categorymap23)
    for key, value in pairs(categorymap23) do
        
    end
end




_M.createLookup = createLookup
return _M
