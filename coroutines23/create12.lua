co = coroutine.create(function ()
    for i=1,4 do
        print("status =============> ", i)
        coroutine.yield()
    end
end)

coroutine.resume(co)
print(coroutine.status(co))            --> suspended
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
print(coroutine.status(co))   ------>   suspended
coroutine.resume(co)
print(coroutine.status(co))   ------>   dead