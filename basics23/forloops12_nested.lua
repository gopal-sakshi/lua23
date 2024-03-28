local array11 = {}

for i=1,3 do
   array11[i] = {}
   for j=1,4 do
    --   array11[i][j] = "key emo "..i*j
      array11[i][j] = i*j
   end
end

for i=1,3 do
    for j=1,4 do
        io.write(array11[i][j].."  ")
    end
    print("___idi oka new line___")
end