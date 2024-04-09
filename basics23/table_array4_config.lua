return {
    ["lrucache"] = {
        ["cricket"] = {
            ["cache_name"]   = "cricket_cache23",
            ["cache_size"]   = 400,
            ["cache_expiry"] = 1800
        }
    },
    ["redis"] = {
        ["default"] = {
            ["host"] = "10.0.0.1",
            ["port"] = 6379,
        },
        ["cricket"] = {
            ["host"] = "10.0.0.2",
            ["port"] = 6379,
        },
        ["football"] = {
            ["host"] = "10.0.0.3",
            ["port"] = 6379,
            ["prefix"] = "football:",
        }
    },
    ["tarantool"] = {
        ["default"] = {
            ["host"] = "10.0.0.4",
            ["port"] = 3301,
        },
        ["cricket"] = {
            ["host"] = "10.0.0.5",
            ["port"] = 3301,
        }
    }
}