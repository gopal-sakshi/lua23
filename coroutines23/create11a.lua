local fn23 = function ()
    print("hi, nenu oka coroutine ni... nannu start chesaaruu")
    end

co = coroutine.create(fn23)     --- declare funcion at someplace and pass as argument to coroutine

print(co)