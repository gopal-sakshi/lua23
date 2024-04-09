--[[
    Any iterator needs to keep some state between successive calls, 
    so that it knows where it is and how to proceed from there. 
    
    Closures provide an excellent mechanism for that task. 
    Remember that a closure is a function that accesses one or more local variables from its enclosing function. 
    Those variables keep their values across successive calls to the closure
    - allowing the closure to remember where it is along a traversal. 
    Of course, to create a new closure we must also create its external local variables. 
    Therefore, a closure construction typically involves two functions: 
    - the closure itself; 
    - and a factory, the function that creates the closure.

    Here
    list_iter ================> factory function
    inner nested function ====> closure

    In this example, list_iter is the factory. 
    Each time we call it, it creates a new closure (the iterator itself). 
    That closure keeps its state in its external variables (t, i, n) so that, each time we call it, 
    - it returns a next value from the list t

    we wont have multiple closures running... bcoz once closure's execution is completed, it dies
    next time we call list_iter ====> a new closure function is created... just that "i, t, n" values wont die
]]--

function list_iter (t)
    local i = 0
    local n = #t
    return function ()
            i = i + 1
            if i <= n then return t[i] end
        end
end

--- APPROACH 01
marks23 = {67, 74, 82, 99, 54}
for element in list_iter(marks23) do
  io.write(element, ' ')
end

io.write("\n")
--- APPROACH 02
marks24 = {10, 20, 30}
iter = list_iter(marks24)           ---- we do not need the iter variable in case of "for loop"
while true do
    local element = iter()          ---- calls the iterator
    if element == nil then break end
    io.write(element..",")
end
io.write("\n")