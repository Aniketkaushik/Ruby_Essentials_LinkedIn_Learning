# ####### Ruby Best Practices #######
# give ruby file an .rb extension

# Put a shebang line at the top..
# #!/usr/bin/env ruby
# first character is a hash, and ! is an exclamation also reffer as bang,
# So, hashbang is where we get shebang.
# it's a unix convention.
# because in unix we don't use the file extension in order to know what we should use to run the program.
# In unix, we are going to use that sheband line,.
# So, what we are essentially doing with this line, is the very top of our file, we are telling unix if you don't know what should run this file, run it with ruby.
# it gets ignore in windows.


# #######################################
# ####### Exit a running Script #########

# Automically, after the last line of code.
# exit, exit!  it exit the program.
# abort(msg)   it exit and give a message at the end.
# ctrl + c     it give an interept signal.

# fruits = ["banana", "apple", "pear"]
# fruits.each do |fruit|
#   puts fruit.capitalize
# end
# puts "Total fruits: #{fruits.count}"
# # it output result and ends automatically.
# # Banana
# # Apple
# # Pear
# # Total fruits: 3

# fruits = ["banana", "apple", "pear"]
# fruits.each do |fruit|
#   if fruit == "apple"
#     break
#   end
# end
# puts "Total fruits: #{fruits.count}"
# # it break out of the loop, but still executed the rest of the code.
# # Total fruits: 3

# fruits = ["banana", "apple", "pear"]
# fruits.each do |fruit|
#   if fruit == "apple"
#     exit
#     # exit!
#   end
#   puts fruit.capitalize
# end
# puts "Total fruits: #{fruits.count}"
# # It exit the program, once condition is met.
# # Banana

# fruits = ["banana", "apple", "pear"]
# fruits.each do |fruit|
#   if fruit == "apple"
#     abort("We encounter #{fruit}")
#   end
#   puts fruit.capitalize
# end
# puts "Total fruits: #{fruits.count}"
# # it exits and give a message.
# # Banana
# # We encounter apple


# ##################################
# ####### Input and Output #########
# # Output
# # put   # it has a line return at the end.
# # print # it doesn't have a line return,
# print "a"
# print "b"
# print "c"
# # abc # result is in the same line.
# # we can add \n in print to line return.
# # print "Hello\n"

# # Input
# # gets
# print "What is your name? "
# response = gets
# puts "HEllo!, #{response}!"
# # HEllo!, Aniket
# # !
# # whenever we use gets, line return is includes in gets,.

# chop, it remove the last character of a string.
# Chomp, it removes the last character of a string if it is a new line character.
# print "What is your name? "
# response = gets.chomp
# puts "HEllo!, #{response}!"
# # HEllo!, Aniket!

# print "What is your name? "
# response = gets.chop
# puts "HEllo!, #{response}!"
# # HEllo!, aniket!
# # .chop also worked same as chomp..
