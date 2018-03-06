--local grades  = {}
-- you can pre populate your table if you want:
local grades  = {Mary=100, Jonh=50} 

while true do
    print "Enter student name (q to quit)"

    local name = io.read()

    if name == "q" then
        break
    end

    print "Enter student score"
    local score = io.read("*n","*l")

    grades[name] = score
end

print "priting grades!"
for k,v in pairs(grades) do
    print "Grade:"
    print(k,v)
end

--there is another way to access a item in the table
print "Printing another way:"
print(grades.sergio, grades["sergio"])