function average23(...)
    result = 0
    local arg = {...}
    print("arg ====> ", arg)
    for i,v in ipairs(arg) do
       result = result + v
    end
    return result/#arg
end
 
print("The average ====> ", average23(10,5,3,4,5,6))