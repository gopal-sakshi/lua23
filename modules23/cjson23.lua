local cjson = require "cjson"           -- sudo luarocks install lua-cjson

local p=666
local d=23.42
payload='{"d": {"pres":'..(p)..',"temp":'..(d)..'}}'
t = cjson.decode(payload)

print("t ====> ", t["d"]["temp"])