local array = {}
local array_tmp = {}

for i = -2, 2 do
   array[i] = i *2;
   array_tmp[i] = "key emo "..i
end

for i = -2,2 do
   io.write(array[i], ' ')
end
io.write('\n')
for i = -2,2 do
    io.write(array_tmp[i], ' ')
end
io.write('\n')