function adder(x,y)
    return x+y
end

function subtractor(x,y)
    return x-y
end

function calculator(x,y,f)
    return f(x,y)
end

print "Enter a number:"
local x = io.read("*n","*l")

print "Enter another number:"
local y = io.read("*n", "*l")

print "do you want adder or subtractor? (type + or -)"
local op = io.read(1, "*l")

if(op=="-")then
    operation = subtractor
else
    operation = adder
end

print(calculator(x,y,operation))