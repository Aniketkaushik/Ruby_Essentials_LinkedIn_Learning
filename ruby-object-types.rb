# ########  Object ########
# # An object oriented
# # No "Primitives" every thing is object
# # Similar to Physical Object
# # eg book obejct or car obejct
# # Object can be represent abstract ideas like membership
# # Object have attributes like color in case of book object or car object can have four doors.
# # Objects are instances of a Class
# # Objects have behaviors
# #
# puts 123
#
#
# #############################
# ########  Variable  ########
# # Not a Objects
# # Once assign to an object it act like that Objects  ## Store a reference to an Objects
# #
# x = 1
# # x is a variable that reference an object 1
# y = x + 1
# z = y - x
#
# puts x, y, z
# # puts y + 1 + "1"  #error..
#
# # ruby convention
# # lowercae with underscore.
# first_name = "Aniket"
# last_name = "Kaushik"
#
# puts first_name, last_name
# puts first_name + last_name
# puts first_name + " " + last_name
#
# # variable with special meaning
# # Global == $variable
# # Class == @@variable
# # Instance == @variable
# # Local == variable   # most used
# # Block == variable
#
#
# #####################################
# ########  Number: Integers  ########
# # Math Operations
# a = 4 + 2  # 6  # Addition
# b = 4 - 2  # 2  # Substraction
# c = 4 / 2  # 2  # Division
# d = 4 * 2  # 8  # Multiplication
# e = 4 ** 2 # 16 # Power or exponential
#
# puts a, b, c, d, e
#
#
# # Ruby Follows Standard Maths order or rules
# # PEMDAS
# # Parentheses   Exponential  Multiplication  Division  Addition  Substraction
# f = (4 + 2 * 3)   # 10  = (4 + 6)
# g = (2 * 5) ** 3  # 1000
#
# puts f, g
#
#
# # also
# h = 5
# h += 2  # x = x + 2
# puts h  # 7
#
#
# # Dot Notation
# # means we are calling some kind of methods or behaviors
# i = 100.class
# j = "Aniket".class
# l = 101.next
# m = -50 #(.abs for absolute value)
#
# puts i, j, l, m.abs
#
#
# ###################################
# ########  Number: Floats  ########
# # numbers with decimal in it
# n = 12.58
# o = 0.66
# puts n + o
# puts n.class, o.class
#
# puts (m + n).class  # integer + float returns float
#
# # integer divided by integer returns integer..
# puts (10 / 3) # 3
# # Float divided by integer returns Float..
# puts (10.0 / 3) # 3.333
#
# # integer multiply by float returns floats
# puts (12.0 * 12) # 144.0
# # float multoply by float returns floats
# puts (12.12 * 12.12)  # 146.8944
#
# # you can change precision of an number
# puts 10.to_f / 3
# puts (10.to_f / 3).class
#
# puts 10.0.to_i + 5
# puts (10.0.to_i + 5).class
#
# # Some Methods
# puts -11.11.abs   # 11.11
# puts 11.11.round  # 11
# puts 11.81.round  # 12
# puts 11.50.round  # 12
# puts 11.11.floor  # 11
# puts 11.11.ceil   # 12
#
# puts 11.11.to_i   # 11
# puts 11.to_f      # 11.0
#
#
# ############################
# ########  Strings  ########
# # A string of characters
# # letters, numbers, symbols,
# # spaces, tabs, line returns
# # "" ''
#
# greeting = "hello"
# target = "world"
#
# puts greeting + " " + target  # concatenation # Hello world
#
# # append  (Joins one string at the end of other string)
# puts greeting << target  # Helloworld
# # Now greeting = Helloworld
# puts greeting << " World"  # Helloworld World
#
# puts "Tam " * 3  # Tam Tam Tam
#
# # .to_s to convert interger to string
# puts "12".to_i + 3  # 15
# # .to_i to convert string to integer
# puts 12.to_s + " " + "May"
#
# # Methos
# # greeting = HelloworldWorld
# puts greeting.reverse  # dlroW dlrowolleh
# puts greeting.capitalize  # Helloworld world
# puts greeting.upcase    # HELLOWORLD WORLD
# puts greeting.downcase  # helloworld world
# puts greeting.reverse.capitalize   # Dlrow dlrowolleh
# puts greeting.length  # 16
# # gets is used for inputs from user.
# # .chop to remove the last character of a string.
# # .Chomp, (gets.chomp), it removes the last character of a string if it is a new line character.
# # rand, to get a random number, default is 0.1 to 1.0 float, rand(10) = 0 to 9,
#
# #########################################################
# ########  Strings : Escaping and interpolation  ########
# # There is no issue as we have used double quotes
# puts "Let's Escape"
# # use backslash to escape a characeter
# puts 'Let\'s escape!'
# puts "let\\ escape"
# # \t = tab, \n = new line
# puts "\ta\tb\nc\n\td" # this won't work in single quotes'' #
#
# # interpolation
# # only works with double quotes
# # means insearting something
# msg = "I'm good at ruby"
# puts "Hi, I'm Aniket, #{msg}." # Hi, I'm Aniket, I'm good at ruby.
#
# puts "1 + 1 = #{ 1 + 1 }"  # 1 + 1 = 2
# puts "Hi, I'm Aniket, #{msg.upcase}." #Hi, I'm Aniket, I'M GOOD AT RUBY.
#
#
# ##########################
# ########  Arrays  ########
# # An ordered, integer-indexed collection of Objects
# # like an expandable file folder.
# # count starts at 0
# # It can be empty
#
# empty_array = []
# array = ['a', 'b', 'c', 100]
# puts array  # ['a', 'b', 'c', 100]
# puts array[2] # c
# puts array[4] # nils as index 4 is empty.
# array[2] = 'q'
# puts array[2] # q
# array[2] = nil
# puts array[2] # empty
# # it preserve the order of array it doesn't shift them around
# puts array # ['a', 'b', nil, 100]
# array[5] = 'd'
# puts array # ['a', 'b', nil, 100, nil, 'd']
# # to add to end of the array (append)
# array << ['f', 'g']  # this is one item at index 6
# puts array[6] # ['f', 'g'] # last obejct in array is itself an array
#
# array1 = ["a", "b", "c", "d", "e", "f", "g"]
# puts array1[2] # c
# puts array1[-1] # g # returns last value
# # [2,4], from index 2 return next four value which also include index 2 value.
# puts array1[2,4] # ["c", "d", "e", "f"]
# # [-2,2], from second last index return next 2 values which also include index -2 value
# puts array1[-2,2] # ["f", "g"]
#
# # ranges
# puts array1[2..3] # ["c", "d"]
# puts array1[-4..-1] # ["d", "e", "f", "g"]
#
#
# ##########################
# ########  Arrays Methods  ########
# array2 = [1 , 2, ["a", "b"], nil, 3, 2, "c" ]
# puts array2.length # 7
# puts array2.size # 7
#
# # It reverse it temporally
# puts array2.reverse # ["c", 2, 3, nil, ["a", "b"], 2, 1]
# # Use ! to do it permanently, more powerful
# puts array2.reverse!  # [1 , 2, ["a", "b"], nil, 3, 2, "c" ]
# puts array2
#
# # .shuffle to shuffle iteams in an array.
# puts array2.shuffle
# puts array2.shuffle! # to do it permanently
# puts array2 # [2, "c", nil, ["a", "b"], 1, 3, 2]
#
# # .uniq returns a unique array, means duplicate values are removed.
# puts array2.uniq   # [2, "c", nil, ["a", "b"], 1, 3]
# puts array2.uniq! # to do it permanently.
#
# # .compact to remove nil form the array.
# puts array2.compact   # [2, "c", ["a", "b"], 1, 3]
# puts array2.compact!  # To save it permanently.
#
# # .flatten, it will take any array inside the array and break apart.
# puts array2.flatten   # [2, "c", "a", "b", 1, 3]
# puts array2.flatten! # To do it permanently.
#
# # .include?, to find whether it include that item in the array or not.
# puts array2.include?(2)  # ture
# puts array2.include?(8)  # false
#
# # .delete_at, to remove an object form the array based on position.
# puts array2.delete_at(1) # remove item in the index position 1
# # .delete, to remove an item from the array, that perticular item which matches
# puts array2.delete("c") # it remove "c" from the array.
#
# # .join, to join an array
# array3 = ["a", "b", "c", "d"]
# puts array3.join(',')  # "a,b,c,d"
# puts array3.join  # "abcd"
# puts array3.join.class  # String, if you join an array it gives an string.
#
# # .split, to split an string into an array. Only works on strings.
# array4 = "1234"
# arr1 = array4.split
# puts arr1 # [1234] # one single array.
# puts arr1.length # 1
# puts arr1.class # array,  if you split an string it gives an array
#
# # we can use delimeter (','), so evertime it see a , it splits at that position.
# # delimeter is importent to split in to different iteams.
# array5 = "1,23,4"
# arr = array5.split(',')
# puts arr # [1, 23, 4]
# puts arr.length  # 3
# puts arr[1] # 23
#
# # push pop shift unshift
# array6 = ["a", "b", "c", "d"]
# # push append an item at the end of an array.
# puts array6.push("e", "f") # ["a", "b", "c", "d", "e", "f"]
# puts array6[4] # ["e"]
# # pop remove an item from the end of an array.
# puts array6.pop # f # remove last one item from the array.
# puts array6.pop(3) # c d e # removes last 3 iteams from the array.
# puts array6 # ["a", "b"]
# # unshift, to add an item at the starting of an array.
# puts array6.unshift("c", "d", "e") # ["c", "d", "e", "a", "b"]
# # shift, remove an item form the beginning of an array.
# puts array6.shift  # c, get removed
# puts array6.shift(2) # d, e get remover as they are first 2 iteams
# puts array6  # ("a", "b")
#
# # addition
# array7 = [1,2,3] + [4,5,6]
# puts array7  # [1,2,3,4,5,6]
# puts array7.length # 6
# #Substraction
# array8 = [1,2,3] - [2]
# puts array8 # [1,2]
#
#
# ##########################
# #######  Hashes  ########
# # Unordered, Object-indexed collection of Objects (or key-value pairs)
# # Order is not important
# # find items by key, not position.
# # Hash keys must be unique.
# car = {
#   "brand" => "ford",
#   "model" => "mustang",
#   "color" => "blue",
#   "interior_color" => "tan"
# }
# puts car["color"]   # blue
# puts car["model"]   # mustang
# car["color"] = "green"
# puts car["color"]   # green
# car["doors"] = 2
# puts car  # {"brand"=>"ford", "model"=>"mustang", "color"=>"green", "interior_color"=>"tan", "doors"=>2}
#
# # .key return an array of all the keys.
# puts car.keys # ["brand", "model", "color", "interior_color", "doors"]
# puts car.keys.class # array
#
# # .value return an array of all the values.
# puts car.values # ["ford", "mustang", "green", "tan", 2]
# puts car.values.class
#
# # .length tell how many keys are there, .size also does same.
# puts car.length
# puts car.size
#
# # .to_a converts an hashes into array.
# puts car.to_a # [["brand", "ford"], ["model", "mustang"], ["color", "green"], ["interior_color", "tan"], ["doors", 2]]
#
#
# ##########################
# #######  Symbols  ########
# # Like Strings, but cannot be edited
# # Begin with a colon
# # Not delimited by quotes
# # it allow computer to better manage memory.
# # lowercase, underscore, nospaces.
# # :frist_name  # it is not a variable, it's more like a label.
# person = {
#   :frist_name => "Aniket",
#   :last_name => "kaushik",
#   # "color" => "blue" # it also works.
# }
# puts person[:last_name] # Kaushik
# person[:last_name] = "Kumar"
# puts person[:last_name] # Kumar
# puts person # {:frist_name=>"Aniket", :last_name=>"Kumar"}
#
# # Shorthand,.
# # key is always a symbol.
# # cannot use integers,.
# score = {
#   low: 2,
#   high: 8,
#   avg: 6
# }
# puts score[:low] # 2
# puts score # {:low=>2, :high=>8, :avg=>6}
# puts score.keys.first.class # Symbols
# puts score.keys.class # Array.
# puts score.class  # Hash
#
#
# ############################
# #######  Booleans  ########
# # An object that is either ture or false,.
# # used for comparisions.
# # Comparision and logical operators.
# # Equal                         ==
# # Less than                     <
# # Greater than                  >
# # Less than or equal to         <=
# # Greater than or equal to      >=
# # Not                           !
# # Not Equal                     !=
# # And                           &&
# # Or                            ||
# var = 1
# puts var == 1 # true
# puts var != 1 # false
# puts true.class  # TrueClass
# puts false.class # FalseClass
# puts var < 3 # true
# puts var > 3 # false
# puts var > 0 && var < 100 # true
# puts var >= 100 || var <= 50 # true
# puts !var # false, it tell whether x has a value or not.
#
# # ruby convension
# # methods names that intends ? (question marks) returns booleans
# # with array.
# array9 = [1, 2, 3, 4]
# puts array9.include?(2) # true
# puts array9.nil? # false
# puts array9.empty? # False
# puts array9[2] == 3 # true
#
# puts var.nil? # False
# puts 2.between?(1,5) # true
#
# # with hashes.
# hash = {
#   "a" => 1,
#   "b" => 2
# }
# # .has_key? to check whether hash is having that key or not.
# puts hash.has_key?("a") #True
# puts hash.has_key?(:a) # False
# # .has_value? to check whether hash is having that value or not.
# puts hash.has_value?(1) # true.
# # Converting hash to array "Hash", "H" must be capital.
# array11 = [['A', 'a'], ['B', 'b'], ['C', 'c']]
# hash = Hash[*array11.flatten]
# puts hash # {"A"=>"a", "B"=>"b", "C"=>"c"}
# array12 = [['A', 'a'], ['B', 'b'], ['C', ['a', 'b', 'c']]]
# hash1 = Hash[*array12.flatten]
# puts hash1 # {"A"=>"a", "B"=>"b", "C"=>"a", "b"=>"c"}
# hash2 = Hash[*array12.flatten(1)]
# # flatten only one level deep
# puts hash2  # {"A"=>"a", "B"=>"b", "C"=>["a", "b", "c"]}


# ############################
# #######  Ranges  ########
# # Range of sequential obejcts.
# # mostly numbers.
# # most usefuls in loop and iterators.
# # inclusive range 1..10, (1,2,3,4,5,6,7,8,9,10) means it include all the number
# # exclusive range 1...10, (1,2,3,4,5,6,7,8,9) means it doesn't include last number
# inclusive = 1..10
# puts inclusive.class # range
# puts inclusive  # 1..10
# puts (1..10).class # 1..10.class is wrong.
# puts inclusive.first # 1
# puts inclusive.begin # 1
# puts inclusive.end # 10
#
# exlcusive = 1...10
# puts exlcusive # 1...10
# puts exlcusive.first # 1
# puts exlcusive.begin # 1
# puts exlcusive.end # 10 This is the reason it's not recommended moreoftern.
#
# # convert renge into an array.
# array10 = [*inclusive]
# puts array10 # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# array11 = [*exlcusive]
# puts array11 # [1, 2, 3, 4, 5, 6, 7, 8, 9]
#
# letters = "a".."m"
# puts letters # "a".."m"
# puts [*letters] # ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m"]
# puts letters.class # range
# puts letters.include?("g") # true


# ############################
# #######  Constants  ########
# # similar to variable.
# # Use for storing values that are constant.
# # Name using all uppercase letters.
# MAX_SCORE = 100
# # ruby can chage constant by giving warning.
# # First letter is Capital,  for a constant.
# Temp = 10


# #######################
# #######  Nil  ########
# # nil is an object.
# nil.class # NilClass
# # nil means nothing.
# puts nil.nil? # true
# product =
# puts product.nil? # true
# puts product == nil # true
# puts !product # true
