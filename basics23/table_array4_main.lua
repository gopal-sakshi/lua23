-- local db23 = require "table_array4_config"          --- cd basics23 && lua table_array4_main.lua
local db23 = require "basics23/table_array4_config"     --- lua basics23/table_array4_main.lua


print("db23 details ====> ", db23["redis"]["cricket"])
print("db23 details ====> ", db23["tarantool"]["cricket"]["host"])