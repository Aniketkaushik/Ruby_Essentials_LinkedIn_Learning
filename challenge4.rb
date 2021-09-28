# # fill in the blank game, popularly known as Mad Libs.
# # Think of a sentence (or two) with several blanks.
# # Example : "I decided to _______ a _______ party for my _______ _______"
# # blanks = [ "verb", "adjective", "adjective", "noun" ]
# # Ask user to provide each type of word.
# # example ask user to "give me a noun or verb ot adjective"
# # output the answer with the added
#
# puts "-"*17
# puts "|  Ruby Blanks  |"
# puts "-"*17
# blanks = ["verb", "adjective", "adjective", "noun"]
# verb = ["a","e","i","o","u"]
# answer = blanks.map do |request|
#   article = verb.include?(request[0]) ? "an" : "a"
#   print "Give me #{article} #{request}: "
#   response = gets.chomp
#   # response is not really requitered as
#   # the last return values is the user input through gets.chomp
# end
# text = "I decided to #{answer[0]} a #{answer[1]}  patry for my #{answer[2]} #{answer[3]} . "
# puts text
