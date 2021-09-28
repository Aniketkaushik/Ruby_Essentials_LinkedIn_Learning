# # Guessing Game Challenge
# # ask the player for their name,
# # Say Hello,
# # Explain rules,..
# # Rules are
#   # pick a random number. and user will try to guess what it is.
#   # Get the palyes's guess using user input.
#   # Then chck whether it's a correct guess.
#   # Tell the player if their guess is correct.
# # Loop to allow them guess three times.
#
# # rand method
# # like rand(100)
# # return 0..99, if we want 1..100 we need to add 1
# # like, rand(100)+1
#
# ###### My Solution ######
# puts "-" * 22
# puts "| Ruby Guessing Game |"
# puts "-" * 22
# puts "What is your name: "
# response = gets.chomp
# puts "Hello #{response.capitalize}."
# puts "I will choose a random number between 1 and 10."
# puts "and you will have three chances to guess it."
# puts "Okay, I have my number."
# guess_number = rand(10)+1
# puts guess_number
# chance = 3
# chance.times do |i|
#   print "Guess #{i+1}: "
#   number = (gets.chomp).to_i
#   puts "You choose : #{number}."
#   if guess_number == number
#     puts "This is a Correct guess"
#     break
#   elsif i < 2
#     puts "Sorry!, That Wasn't it. "
#     puts "Try again."
#   else
#     puts "That was you last guess."
#   end
# end
# puts "Thanks for playing."
# puts "My Guess Number was: #{guess_number}"
# puts
# puts "Good bye!"
#


### Method-2
# puts "-" * 22
# puts "| Ruby Guessing Game |"
# puts "-" * 22
# puts "What is your name: "
# response = gets.chomp
# puts "Hello #{response.capitalize}."
# puts "I will choose a random number between 1 and 10."
# puts "and you will have three chances to guess it."
# puts "Okay, I have my number."
# guess_number = rand(10)+1
# puts guess_number
# 3.times do |i|
#   guess_number1 = 1..10
#   print "Guess #{i+1}: "
#   number = (gets.chomp).to_i
#   if guess_number1.include?(number)
#     # puts "correct"
#     if guess_number == number
#       puts "This is a Correct guess"
#       break
#     elsif i < 2
#       puts "Sorry!, That Wasn't it. "
#       puts "Try again."
#     else
#       puts "That was you last guess."
#     end
#   else
#     puts "Please choose a number in between 1 to 10."
#     redo
#   end
# end

# 
# #########################
# ####### Solutions #######
# puts "-" * 22
# puts "| Ruby Guessing Game |"
# puts "-" * 22
# puts "What is your name: "
# print ">"
# response = gets.chomp
# puts "Hello #{response.capitalize}."
# puts "I will choose a random number between 1 and 10."
# puts "and you will have three chances to guess it."
#
# guess_number = rand(10)+1
# puts "Okay, I have my number."
#
# MAX_GUESS = 3
# 1.upto(MAX_GUESS) do |guess_num|
#   print "Guess #{guess_num} :"
#   guess = gets.chomp
#   if guess.to_i == guess_number
#     puts "Great Guessing, #{response}!"
#     puts "My Number Was #{guess_number}."
#     break
#   else
#     puts "sorry, that wasn't it."
#     if guess_num == MAX_GUESS
#       puts
#       puts "That was your last guess."
#       puts "My Number Was : #{guess_number}."
#     end
#   end
# end
#
# puts "\n\n GoodBye!.."
