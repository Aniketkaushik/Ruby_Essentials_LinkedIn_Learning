# # ####### Enumerables ########
# # Countable Items
# # Example : Arrays, Ranges, Hashes,.
# # String (sort of), mean single byte character can be counted but multibyte character can't be counted.
# # String act like enumerables but they are not enumerables, we have to specify do we mean each char or each byte..
# # Included Modules: Enumerables.
# # count
# # each, each_with_indix
# # first, last
# # include?
# # max, min
#
#
# #############################
# ######## Code Block ########
# # Curly-brace format
# # Single line Blocks
# # Blocks that returns data, no changes.
# 5.times { puts "Hello" }
# 5.downto(1) { |i| puts "countdown: #{i}" }
# puts "Blast Off!"
#
# # Do-end format
# # Multiline Blocks
# # Blocks that perform actions, make changes.
# 5.times do
#   puts "Hello"
# end
#
# 5.downto(1) do |i|
#   puts "countdown: #{i}"
# end
# puts "Blast Off!"
#
# scores = {low:2, high:8, avg: 6}
# scores.each do |k,v|
#   puts "#{k.capitalize}: #{v}"
# end
#
# ### variable Scope Indicators ###
#  # Global          $variable
#  # Class           @@variable
#  # Instance        @variable
#  # Local           variable
#  # Block           variable
# # Block variable look exactly same as local variable
# # but they have different scope,
# # local variable are available both inside and outside of block.
# # Block varibale are only available inside the block, they don't have any scope outside of block.
# factor = 2
# [1,2,3,4,5].each do |n|
#   # n is a block variable
#   puts n * factor
# end
# # Outside of block each, n is not been defined in the code.
# # here ruby is looking for local variable n.
# puts n # it gives an error.. undefined local variable or method `n'
#
# n = 1
# factor = 2
# [1,2,3,4,5].each do |n|
#   # inside the block n value keeps on changing, but outside it reffer to the local variable value.
#   puts n * factor
# end
# puts n # 1

#
# ############################
# ####### Find Methods #######
# range = 1..10
# # Find / Detect
# # it iterates throught the set looking for 1st item that met the condition,.
# answer_find1 = range.find { |n| n == 5 }
# puts answer_find1 # 5
# puts answer_find1.class # integer
# # medulo
# # 1st value in the set that is evenly divisible by 3
# answer_find2 = range.find { |n| n % 3 == 0 }
# puts answer_find2 # 3
# answer_find3 = range.detect { |n| n % 3 == 0 }
# puts answer_find3
# # array
# fruits = ["apple", "banana", "pear"]
# answer_find4 = fruits.find { |fruit| fruit.length > 5 }
# puts answer_find4 # banana
# puts answer_find4.class # string
# # hash
# pantry = {
#   "apple" => 0,
#   "banana" => 1,
#   "pear" => 3
# }
# answer_find5 = pantry.find { |k,v| v == 0 }
# puts answer_find5 # ["apple", 0]
# puts answer_find5.class  # array
#
# # find_all / Select
# # find all find all the values that met the condition.
# answer_find6 = range.find_all { |n| n % 3 == 0 }
# puts answer_find6 # 3,6,9
# puts answer_find6.class # array
# answer_find7 = range.select { |n| n % 3 == 0 }
# puts answer_find7
#
# # any? / none ?
# # in the set if any of the value match the booleans set
# answer_find8 = range.any? { |n| n <= 5 }
# puts answer_find8 # true
# # In the set, if none of the item met the condition of boolean.
# answer_find9 = range.none? { |n| n <= 5  }
# puts answer_find9 # false
#
# # all? / One?
# # in the set,  if all the items match the condition.
# answer_find10 = range.all? { |n| n <= 5 }
# puts answer_find10 # false
# # in the set, if only one of the item met the condition.
# answer_find11 = range.one? { |n| n <= 5 }
# puts answer_find11 # false
# answer_find12 = range.one? { |n| n == 5 }
# puts answer_find12 # true
#
# # delete_if
# # it works with array, first convert range to array.
# # it also works with hash.
# number = [*range]
# number.delete_if { |n| n <= 5 }
# puts number # [6,7,8,9,10]
# puts number.class # array
# numbers = [*range]
# numbers.delete_if { |n| n % 2 == 1 }
# puts numbers # [2,4,6,8,10]
# # hash
# pantry1 = {
#   "apple" => 0,
#   "banana" => 1,
#   "pear" => 3
# }
# pantry1.delete_if { |k,v| v == 0 }
# puts pantry1

# ############################
# ####### Map Methods #######
# # map / collect
# # both work by iterating through an enumerable.
# # Execute a code block on each items
# # then it take the result of the block and add it into a new array.
# # Imp, Number of Iteams in = number of iteams out,.
# # map always returns an array..
# # new array value are the value whihc are return at last of code.
#
# # map example
# x = [1,2,3,4,5,6]
# y = x.map { |n| n + 1 }
# puts y # [2,3,4,5,6,7]
# puts y.class # Array
# puts y.length # 6
# # collect is same as map
# y1 = x.collect { |n| n + 1 }
# puts y1 # [2,3,4,5,6,7]
#
# # hash example
# scores = {
#   low: 2,
#   high: 8,
#   avg: 6
# }
# adjusted_score = scores.map { |k,v| "#{k.capitalize} : #{v * 100} "}
# puts adjusted_score # ["low: 200", "high: 800", "avg: 600"]
# puts adjusted_score.class # Array
#
# fruits1 = ["apple", "banana", "pear"]
# fruits1_answer = fruits1.map do |fruit1|
#   if fruit1 == "pear"
#     fruit1.capitalize
#   end
# end
# # as map returns the result of the block of code
# # hence, if 1st block condition is false, so, it do nothing and returns result = nil.
# # if condition is met, it do what's asked in the block, and return result
# puts fruits1_answer # [nil, nil, Pear]
# puts fruits1_answer.class
# fruits1_answer_different_style = fruits1.map { |fruit1_1| fruit1_1 == "pear" ? fruit1_1.capitalize }
# puts fruits1_answer_different_style
#
# fruits2 = ["apple", "banana", "pear"]
# fruits2_answer = fruits2.map do |fruit2|
#   if fruit2 == "pear"
#     fruit2.capitalize
#   else
#     fruit2
#   end
# end
# puts fruits2_answer # ["apple", "banana", "Pear"]
#
# fruits3 = ["apple", "banana", "pear"]
# fruits3_answer = fruits3.map do |fruit3|
#   puts fruit3.capitalize # after printing string it return nil
#   # fruit3 # by doing this we can return a value instead of nil
# end
# # Apple
# # Banana
# # Pear
# # don't use puts inside a block.
# # because puts always return nil..
# puts fruits3_answer # [nil, nil, nil]
#
# # this can't be done with each.
# z = x.each { |n| n + 1 }
# puts z # [1,2,3,4,5,6]
# puts z.class # Array.
# z1 = x.each { |n| puts n + 1 }
# # 2    # Integer values.
# # 3
# # 4
# # 5
# # 6
# # 7
# puts z1 # [1,2,3,4,5,6]
#
# # map! / collect!
# # Ruby oftern add "!" to indicate a more powerful or destructive version of a method.
# # it warks the same but replaces array content instead of saving the values in a new variable.
# fruits4 = ["apple", "banana", "pear"]
# fruits4.map! do |fruit4|
#   fruit4.capitalize + "'s"
# end
# puts fruits4


# ############################
# ####### Inject Methods #######
# # inject / reduce
# # "Accumulator"
# # Block variable to use for accumulation.
# # Ruby Convention: memo
# # result of the operation is stored in memo for next time through.
# # result is = to the value return by the block.
# # In Inject, if array has 5 iteams, then it loops for 4 time, if memo is degined with inject then it loops for 5 times.
# ranges1 = 1..5
# answer = ranges1.inject { |memo, n| memo + n }
# # memo = 1
# # memo = 1 + 2 = 3
# # memo = 3 + 3 = 6
# # memo = 6 + 4 = 10
# # memo = 10 + 5 = 15
# puts answer # 15
# puts answer.class # Integer
#
# answer1 = ranges1.inject { |memo, n| memo * n }
# # memo = 1
# # memo = 1 * 2 = 2
# # memo = 2 * 3 = 6
# # memo = 6 * 4 = 24
# # memo = 24 * 5 = 120
# puts answer1 # 120
# puts answer1.class
#
# answer3 = ranges1.inject { |memo, n| memo ** n }
# # memo = 1
# # memo = 1 ** 2 = 1
# # memo = 1 ** 3 = 1
# # memo = 1 ** 4 = 1
# # memo = 1 ** 5 = 1
# puts answer3 # 1
# puts answer3.class # Integer
#
# # Be Careful with return values.
# answer4 = ranges1.inject do |memo, n|
#   memo + n
#   # here value returned by the block is 0 evertime.
#   x = 0
# end
# puts answer4 # 0
#
# answer5 = ranges1.inject do |memo, n|
#   if n % 2 == 0
#     memo + n
#   end
# end
# puts answer5 # undefined method `+' for nil
# # because for values which don't met the condition the result, return by the block is nil..
# # and nil can't be added to an integer.

# # Inject with an argument,
# # If we provide an argument, that value is used as an starting value. So, memo = 0, at the begining.
# # object is not used as starting value.
# # without argument starting value would be an string.
# fruits5 = ["apple", "banana", "pear"]
# size = fruits5.inject(0) do |memo, fruit|
#    memo + fruit.length
# end
#  # memo = 0 # starting value.
#  # memo = 0 + 5 # length of apple
#  # memo = 5 + 6 # length of banana + apple
#  # memo = 11 + 4 # lenth of pear + (banana + apple)
# puts size # 15
#
# longest = fruits5.inject do |memo, fruit|
#   if fruit.length > memo.length
#     fruit
#   else
#     memo
#   end
# end
# puts longest # banana
#
# mash = fruits5.inject("") do |memo, fruit|
#   memo << fruit[0]
# end
# puts mash #abp
#
# array1 = [['A', 'a'], ['B', 'b'], ['C', 'c']]
# hash = array1.inject({}) do |memo, (key, value)|
#   memo[key] = value
#   memo
# end
# puts hash # {'A' => 'a', 'B' => 'b', 'C' => 'c'}
# hash = array.inject({}) do |memo, values|
#   memo[values.first] = values.last
#   memo
# end
# puts hash #  {'A' => 'a', 'B' => 'b', 'C' => 'c'}


# ################################
# ######## Sorts Methods ########
# # sort method use the comparison operator
# # <=>
# # also known as "spaceship operator"
# # Comparison Operator,
# # value1 <=> value2 comparison, it return 3 values,.
# #   -1  , If value1 is less than value 2.
# #    0  , If value1 = value2
# #    1  , If value1 is greater than value 2.
# # in irb  1 <=> 2 # -1 , 2 <=> 1 # 1 , 2 <=> 2 # 0
#
# # In sort we move the item
# # value1 <=> value2
# #   -1  , value1 < value2 , value1 Move's left.
# #    0  , value1 = value2 , Move's stays.
# #    1  , value1 > value2 , value1 Move's right.
# array = [5,8,2,6,1,3]
# x = array.sort { |v1,v2| v1 <=> v2 }
# puts x # [1,2,3,5,6,8]
# y = array.sort { |v1,v2| v2 <=> v1 }
# # item that are greater moves to the left, and other item move to left.
# puts y # [8,6,5,3,2,1]
#
# fruits6 = ["banana","apple", "pear", "papaya"]
# # default sort..
# a = fruits6.sort
# puts a # ["apple", "banana", "papaya", "pear"]
# # custom sort
# b = fruits6.sort do |fruit1, fruit2|
#   fruit1.length <=> fruit2.length
# end
# puts b # ["pear", "apple", "banana", "papaya"]
# # Sort_by method
# # it allows us to sort with on single block variable.
# c = fruits6.sort_by do |fruit|
#   fruit.length
# end
# puts c # ["pear", "apple", "banana", "papaya"]
# # sort using case method
# puts "n"*10
# d = fruits6.sort do |fruit1, fruit2|
#   case fruit1
#   when "apple"; 1
#   when "banana"; -1
#   when "pear"; 0
#   end
# end
# puts d # error it doesn't work,,..

# # short! / short_by!
# # ruby oftern add "!" to indicate a more powerful or destructive version of a method.
# # Works the same but replaces array contents.
# array2 = [5,8,6,2,1,3]
# array2.sort! {|v1,v2| v1 <=> v2}
# puts array2
#
# # shorting hash has a perticular problem
# # as hash is an unordered set.
# # we can call sort in an hash and it returns an array,.
# hash1 = {a: 4, c:5, b: 3}
# # it take the hash and converts it into an array.
# # sort by keys
# ans_hash = hash1.sort {|p1,p2| p1[0] <=> p2[0]}
# puts ans_hash # [[:a, 4], [:b, 3], [:c, 5]]
# # sort by values
# ans_hash1 = hash1.sort {|p1,p2| p1[1] <=> p2[1]}
# puts ans_hash1 # [[:b, 3], [:a, 4], [:c, 5]]


#############################
####### Merge Method #######
# # Only used for hashes
# # Merges two hashes together
# # block can provide rules to use when mearging
# h1 = {
#   :a => 2,
#   :b => 4,
#   :c => 6
# }
# h2 = {
#   :a => 3,
#   :b => 4,
#   :d => 8
# }
# # this is default, and in case of same key with two different values ruby chooses the newer one, or the argument one.
# h3 = h1.merge(h2)
# # in case of a, ruby decide the newer one should win,
# puts h3 # {:a=>3, :b=>4, :c=>6, :d=>8}
# h4 = h2.merge(h1)
# puts h4 # {:a=>2, :b=>4, :d=>8, :c=>6}
#
# # we can provide a code block in case of key conflict.
# # when same key exist in both hashes with different value.
# # this code block is only called in case of a key conflict.
# h5 =  h1.merge(h2){|key,old,new| new}
# h6 =  h1.merge(h2){|key,old,new| old}
# puts h5 # {:a=>3, :b=>4, :c=>6, :d=>8}
# puts h6 # {:a=>2, :b=>4, :c=>6, :d=>8}
#
# h7 =  h1.merge(h2){|k, o, n| o < n ? o : n }
# puts h7 # {:a=>2, :b=>4, :c=>6, :d=>8}
# h8 =  h1.merge(h2){|k, o, n| o * n }
# # in this value of :b also got change as it also had a key conflict.
# puts h8 # {:a=>6, :b=>16, :c=>6, :d=>8}
#
# # merge!
# # ruby oftern add "!" to indicate a more powerful or destructive version of a method.
# # Works the same but replaces array contents.
# h1.merge!(h2)
# puts h1 # {:a=>3, :b=>4, :c=>6, :d=>8}


########################################
