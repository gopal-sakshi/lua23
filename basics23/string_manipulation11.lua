local str1 = "Real Madrid is a football club based in Madrid, Spain";


print(string.upper(str1))
print(string.gsub(str1, "football", "soccer"))
print(string.reverse(str1))

print(string.format("Basic formatting =====> %s",str1))
print(string.format("pi = %.4f", math.pi))                       --> 4 decimals of pi = 3.1416

local d,m,y = 5,11,1990
print(string.format("%02d/%02d/%04d", d, m, y))

local tag, title = "h4", "idi h4 heading, html page lo"
print(string.format("<%s>%s</%s>", tag, title, tag))