function getRandomNumber(maxValue)
    math.randomseed(os.time())
    math.random()
    return math.random(maxValue)
end

--when we type the reserved word "local" this variable will be visible only into the scope
--that it was declared.
local number = getRandomNumber(100) 

print "Guess a number"


function handleGuesses(...)
    lowMessage, highMessage, number = ...
    print "try to guess the number:"
    --we are using the loop while.
    --(~=) not equal.
    while  anwser ~= number do    
        local anwser = io.read("*n")
        if anwser < number then 
            print(lowMessage)
        elseif anwser > number then 
            print (highMessage)
        else
            break
        end
        print "Gues again:"
    end  
end

handleGuesses("too low", "too high", number)
print "you got it"
print(number)

-- it will be nil because we set answer as local into the block of while.
--print(anwser)
