-- https://stackoverflow.com/questions/38069751/confusion-about-lua-corountines-resume-and-yield-function

local function f( a, b )
    print( "arguments", a, b )
    return "I'm", "done"
end

print( "f returned", f(1, 2))
io.write("\n")
print( "f returned", pcall(f, 1, 2) )

--- call the main function of a coroutine by using coroutine.resume() instead of pcall()
local th1 = coroutine.create(f)
io.write("\n")
print( "f returns", coroutine.resume(th1, 1, 2))
print("---------------------------------------------------")


local function g( a, b )
    print("arguments", a, b)
    local c, d = coroutine.yield("a")
    print("yield returned", c, d)
    return "I'm", "done"
end

local th2 = coroutine.create(g)
print( "g yielded", coroutine.resume(th2, 1, 2))
io.write("\n")
print( "g returned", coroutine.resume(th2, 3, 4))