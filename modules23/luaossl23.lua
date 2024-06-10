local cipher = require "openssl.cipher"
local rand = require "openssl.rand"

function binary_to_hex(string)
    return (string:gsub('.', function (char)
        return string.format('%02X', string.byte(char))
    end))
end

function hex_to_binary(string)
    return (string:gsub('..', function (chars)
        return string.char(tonumber(chars, 16))
    end))
end

function encrypt(type, key, plaintext)
    local iv = rand.bytes(16)                   -- generate random initialization vector
    return binary_to_hex(iv .. cipher.new(type):encrypt(key, iv):final(plaintext))
end

function decrypt(type, key, encrypted)
    local iv = hex_to_binary(encrypted:sub(0 + 1, 31 + 1))        -- first 16 bytes are the initialization vector
    local string = hex_to_binary(encrypted:sub(32 + 1))
    return cipher.new(type):decrypt(key, iv):final(string)
end

local type = "aes-256-cbc"
local key = "super-very-secret-encryption-key"
local plaintext = "secretPassword23"

local encrypted = encrypt(type, key, plaintext)
print("encrypted23 ====> ", encrypted)
local decrypted = decrypt(type, key, encrypted)
print("decrypted23 ====> ", decrypted)

-- print(string.format("\nencrypt(\n  type: '%s',\n  key: '%s',\n  plaintext: '%s'\n) => '%s'", type, key, plaintext, encrypted))
-- print(string.format("\ndecrypt(\n  type: '%s',\n  key: '%s',\n  encrypted: '%s'\n) => '%s'",type, key, encrypted, decrypted))