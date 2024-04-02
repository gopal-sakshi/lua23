--- in file22.lua
function producer ()
    while true do
        local x = io.read()     -- produce new value
    send(x)                 -- send to consumer
end
end

function send(arg) print("do some sending stuff ", arg) end

---------------------------------------------------------
--- in file23.lua
function consumer ()
    while true do
        local x = receive()        -- receive from producer
        io.write(x, "\n")          -- consume new value
    end
end

function receive() print("accept some stuff") end
---------------------------------------------------------