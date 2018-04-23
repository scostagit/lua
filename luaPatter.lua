local test = {}

local function trace(A) return end 

function main(Data)
   for k,v in pairs(test) do 
      v()
   end
end

function test.strings()
   local s = 'ABCDE'
   s:byte(1)  -- A = 65
   s:byte(2)  -- B = 66
   s:byte(3)  -- C = 67
   s:byte(4)  -- D = 68
   s:byte(5)  -- E = 69
   s:byte(6)  -- out of range
   
   string.char(65, 66, 67, 68, 69)
end

function test.SearchingStrings()
   local s = 'Hello Lua User'
   
   s:find('Lua')     -- 'Lua' found
   s:find('lua')     -- string case sensitivity
 --We can also specify where to begin the string search
   s:find('Lua', 8)  -- not found after 8th character
   s:find('e', -5)   -- start find 5 characters from end
   
   
end

function test.FindReplace()
   local s = '{Aloha} One {Banana} Two '
   s:gsub("Banana", "Lua User")  --full text find and replace
   s:gsub('a', 'A')    -- find and replace all 
   s:gsub('a', 'A', 3)  --Specify Number of Times to replace
   
   s:gsub('(.)(a)', '%2%1')  --you can reference what is 'Captured'
   
   s:gsub('Aloha', ck()) --Find and replace through a function
   
   s:gsub('{(.-)}', '123') -- lazy match as few characters as possible
   s:gsub('{(.*)}', '123') --greedy match finds as many characters 
                           --between two curly brackets as possible
   
end

function ck()
   return 'Hello'
end

function test.Matching()
   local s = 'I have 2 questions for you.'
   s:match('%d+ %a+')
end


function test.PatternOne()
   local s = '123456789'
   s:gsub('345', '5')
   s:gsub('^345', '5')
   s:gsub('^12345', '5')
   s:gsub('678', '5')
   s:gsub('345$', '5')
   s:gsub('789$', '5')
   
   
   
end



function test.TruePatterns()

   
   local s = 'A string!\n 1:{Act}, 2:{Cat}, 3:{Cap}'
   
   string.match(s, '.')
   s:match('.')   --Any Character
   s:match('%a')  --Any upper or lower case character
   s:match('%l')  --A lowercase letter
   s:match('%u')  --An UPPERCASE letter
   s:match('%p')  --Any Punctuation character
   s:match('%w')  --An alphanumberic character
   s:match('%d')  --Any digit
   s:match('%s')  --A whitespace character
   s:match('%c')  --control character like carriage return \t line feed \n backspace \b etc
   s:match('%x')  --A hexadecimal (Base 16) digit)
   s:match('%z')  --the NULL character literal '\0'
   
   --CAPITAL FOR OPPOSITE
   s:match('%A')  --Any NON upper or lower case character
   s:match('%L')  --An UPPERCASE letter
   s:match('%U')  --A lowercase letter
   s:match('%P')  --Any alphanumeric character
   s:match('%W')  --Any NON alphanumberic character
   s:match('%D')  --Any NON digit
   s:match('%S')  --Any NON whitespace character
   s:match('%C')  --Any non control character
   s:match('%X')  --Any non hexadecimal (Base 16) digit)
   s:match('%Z')  --Any character
   
   --magic characters ^$()%.[]*+-?
   --Literal Values 
   string.match('I never have any $', '%$')
   

   --QUANTIFIERS
   s:gsub('%a+', 'X')
   s:gsub('%a?', 'X')
   s:gsub('{(.-)}', 'X') -- lazy match as few characters as possible
   s:gsub('{(.*)}', 'X') --greedy match finds as many characters 
                           --between two curly brackets as possible
   
   --ANCHORS
   s:gsub('1:', 'X')  --Find and replace '1:' with 'X'
   s:gsub('^1:', 'X') --anchor to beginning
   s:gsub('^A ', 'X') --anchor to beginning
   s:gsub('1:$', 'X') --anchor to end
   s:gsub('%}$', 'X') --anchor to end
   s:gsub('^A.+}$', 'X') --If 'A' in the beginning and '}' at the end then replace everything
  

   
   
   --SETS
   s:gsub('%d%p', 'X')
   s:gsub('[%d%:s]', 'X')
   s:gsub('[abc]', 'X')
   
   --RANGES
   s:gsub('[1-3]', 'X')
   s:gsub('[a-f]', 'X')
   s:gsub('[a-fA-F]', 'X')
   

   
   --COMPLEMENTS
   s:gsub('[%s]+', 'X')
   s:gsub('[^%s]+', 'X')
   s:gsub('[%{]+', 'X')
   s:gsub('[^%{]+', 'X')
      
   
   
   --CAPTURES
   s:gsub('(.)(a)', '%2%1')  --you can reference what is 'Captured'
   
   
   
end
