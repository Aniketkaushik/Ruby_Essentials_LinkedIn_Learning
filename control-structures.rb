# ######## About Control Structure #######
# Add Dynamism to code.
# Determine circumstances when code executes.
# Conditionals.
# Loops.
# Iterators, use a set of objects and exacutes the code once each time for those objects, those object are tepically store in an array, hash and iterator will loop as it move through that array or hash using each object in turn.
# Use multiple lines of codes.
#
#
# #################################
# ######## Conditionals: #########
# ######## If #######
# # if boolean
# #   # ...
# # end
# fruit = "apple"
# if fruit == "apple"
#   puts fruit.upcase
# end
#
# ######## else #######
# # if boolean
# #   #...
# # else
# #   #...
# # end
# if fruit == "mango"
#   puts fruit.upcase
# else
#   puts fruit.upcase
# end
#
# ######## elsif #######
# # if boolean
# #   #...
# # elsif boolean
# #   #...
# # else
# #   #...
# # end
# x = 9
# if x <= 10
#   puts "10 or below"
# elsif x >= 20
#   puts "20 or above"
# else
#   puts "between 10 and 20"
# end
#
#
# ################################
# ######## Conditionals: #########
# ######## UnLess #########
# # unless booleand
# #   #...
# # end
# # Same As
# # if !boolean
# #   #..
# # end
# # unless is more cleaner, easier to read.
# # unless array.empty?
# #   puts "not empty"
# # end
# # unless search_result.nil?
# #   puts "Not nil"
# # end
# # it depends on which one reads more clearly
# # example
# # if product.visible?
# #   #...
# # end
# # unless product.sold_out?
# #   #...
# # end
# cart = ["apple", "banana", "carrot"]
# unless cart.empty?
#   puts "the first item is: #{cart[0].capitalize}"
# else
#   puts "Cart is Empty."
# end
# if !cart.empty?
#   puts "the first item is: #{cart[0].capitalize}"
# else
#   puts "Cart is Empty."
# end
#
# ################################
# ######## Conditionals: #########
# ######## Case #########
# # case
# # when boolean
# #   #..
# # when boolean
# #   # ..
# # else
# #   #..
# # end
# count = 3
# case
# when count == 0
#   puts "nobody"
# when count == 1
#   puts "1 person"
# when (2..5).include?(count) && count.even?
#   puts "Several People"
# else
#   puts "Many People"
# end
#
# # case test_value
# # when value
# #   #..
# # when value
# #   #..
# # else
# #   #..
# # end
# # this is less flexible
# case count
# when 0
#   puts "nobody"
# when 1
#   puts "1 Person"
# when 2..5 # different
#   puts "Several People"
# else
#   puts "Many People"
# end
#
#
# ######################################
# ############ Conditionals: ###########
# ######## Shorthand Operators #########
# # Ternary Operator.
# # boolean ? result1 : result2
# count = 1
# puts count == 1 ? "person" : "people"
# # if count == 1
# #   puts "person"
# # else
# #   puts "People"
# # end
#
# # Or Operator
# y = "aniket"
# # if y has a value then x = y otherwise x = z
# puts x = y || z
# DEFAULT_LIMIT = 100
# limit = nil
# max = limit || DEFAULT_LIMIT
# puts max
# # if y
# #   x = y
# # else
# #   x = z
# # end
# # puts x
#
# # OR-Equal Operators
# # If x has a value use it otherwise x  = y
# puts x ||= y
# limit ||= DEFAULT_LIMIT
# puts limit
# # unless x
# #   x = y
# # end
#
# # Statement Modifiers
# x = y unless x
# limit = DEFAULT_LIMIT unless limit
# greeting_enabled = true
# puts "Hello" if greeting_enabled
# # score += 10 unless score >= MAX_SCORE
#
#
# ##########################
# ######### Loops #########
# # loop do
# #   #..  # infinite loops.
# # end
# # break = Terminate the whole loops
# # next = Jump to next loop
# # redo = Redo this loop.
# # retry = Strat the whole loop over.
# i = 5
# loop do
#   break if i <= 0
#   puts "Countdown: #{i}"
#   i -= 1
# end
# puts "blast off!"
#
# # Better way of doing loops
# # while boolean
# #   #..
# # end
# # in while code is in true state and runs till it become false
# # 1 > 0 is True
# i = 5
# while i > 0
#   puts "Countdown: #{i}"
#   i -= 1
# end
# puts "Blast off!"
# # until boolean
# #   # ..
# # end
# # in until code is in false state and runs till it necome true.
# # i <= 0 is flase
# i = 5
# until i <= 0
#   puts "Countdown: #{i}"
#   i -= 1
# end
# puts "Blast off!"
#
# cart = ["apple", "banana", "orange"]
# until cart.empty?
#   first = cart.shift
#   puts first.upcase
#   # cart.push(first) # infinite loops
# end
#
#
# #############################
# ######### Iterators #########
# # Iterate
# # to say or do again over and over
# # To apply a procedure repeatedly
# # To Perform code on each item in a set.
# # Set can be array, hash, range, numbers etc..
# # times iterator
# # |i| block variable.
# 5.times { puts "Hello" }
# i = 5
# i.times do
#   puts "Countdown: #{i}"
#   i -= 1
# end
# puts "blast off!"
# # Countdown: 5
# # Countdown: 4
# # Countdown: 3
# # Countdown: 2
# # Countdown: 1
# # blast off!
#
# 5.times do |i|
#   puts "Countdown1: #{i}"
# end
# # Countdown1: 0
# # Countdown1: 1
# # Countdown1: 2
# # Countdown1: 3
# # Countdown1: 4
#
# # upto iterator
# 1.upto(5) { puts "Hello" }
# 1.upto(5) do |i|
#   puts "Countdown: #{i}"
# end
# puts "blast off!"
#
# # downto iterator
# 5.downto(1) { puts "Hello" }
# 5.downto(1) do |i|
#   puts "Countdown: #{i}"
# end
# puts "blast off!"
# 5.downto(1) { |i| puts "Countdown: #{i}" }
# puts "blast Off!"
#
# # each iterator
# (1..5).each { puts "Hello" }
# fruits = ["apple", "banana", "pear"]
# fruits.each do |fruit|
#   puts fruit.capitalize
# end
# # Apple
# # Banana
# # Pear
#
# for fruit in fruits
#   puts fruit.capitalize
# end
# # Apple
# # Banana
# # Pear
#
# # iterators by class
# # Number : time, downto, upto, step
# # Range : each, step
# # String : each_line, each_char (characters), each_byte
# # Array : each, each_index, each_with_index (each item with it's index)
# # Hash : each, each_key, each_value, each_pair
# #
# car = {
#   "brand" => "ford",
#   "model" => "mustang",
#   "color" => "blue",
#   "interior_color" => "tan"
# }
# car1 = car.each do |key,value|
#   puts key.capitalize, value.capitalize
#   # puts key.class # String
# end
# # Brand
# # Ford
# # Model
# # Mustang
# # Color
# # Blue
# # Interior_color
# # Tan
# puts car1 # { "brand" => "ford", "model" => "mustang", "color" => "blue", "interior_color" => "tan" }
