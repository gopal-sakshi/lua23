-- wrap() function makes a coroutine & gives back a function. 
-- When that function is called, it resumes the coroutine.

-- Unlike create, wrap does not return the coroutine itself; 
-- instead, it returns a function that, when called, resumes the coroutine


function coroutine45()
    print("Hello nenu oka coroutine function ni...!")
end

local wrappedCoroutine45 = coroutine.wrap(coroutine45)

wrappedCoroutine45()