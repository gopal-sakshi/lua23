-- create funciont creates new coroutines
-- it takes single argument --> a function with the "CODE that coroutine WILL RUN"
co = coroutine.create(function ()
    print("hi, nenu oka coroutine ni... nannu start chesaaruu")
    end
)

print(co)   --> thread: 0x8071d98


-- A coroutine can be in one of three different states: 
    -- suspended, running, dead

print(coroutine.status(co))   --> suspended
coroutine.resume(co)
print(coroutine.status(co))   --> dead