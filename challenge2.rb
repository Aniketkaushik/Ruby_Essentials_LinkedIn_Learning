# Blanket Pattens
# Take string like
# colors = "RRGGBBYYKK"
# use this string to output 20 different rows
# On each row, shift the character to the left by
# removing the first character and putting it at the end,
# like "RGGBBYYKK"

# # Method - 1
# colors = "RRGGBBYYKK"
# puts colors
# 20.downto(1) do
#   color1 = colors[0]
#   color2 = colors[1..-1]
#   colors = color2 << color1
#   puts colors
# end

# # Method - 2
# puts patterns = "++*~~*++*"
# pattern = patterns.split('') # ["+", "+", "*", "~", "~", "*", "+", "+", "*"]
# 20.times do
#   first = pattern.shift
#   # afetr this pattern = ["+", "*", "~", "~", "*", "+", "+", "*"]
#   # pattern vlues change inside loop
#   pattern << first
#   # afetr this pattern = ["+", "*", "~", "~", "*", "+", "+", "*", "+"]
#   # last = pattern.push(first)
#   # puts pattern = pattern.join (this conver pattern into string.)
#   puts pattern.join # This is temperory and pattern is still an array.
#   # afetr this pattern = ["+", "*", "~", "~", "*", "+", "+", "*","+"]
#   # first loop ends.
#   puts pattern.class  # Array..
#   # at last array is return.
# end
# # afetr this pattern = ["+", "+", "*", "~", "~", "*", "+", "+", "*"]
# # in this is case

# patterns = "++*~~*++*"
# 20.times do
#   pattern = patterns.split("")
#   first = pattern.shift
#   last = pattern.push(first)
#   puts patterns = last.join # here we are assigning a string to the patterns.
# end


# #########################
# ####### Solutions #######
# # Method - 1
# colors1 = "RRGGBBYYKK"
# lines = 20
#
# count = 0
# while count < lines
#   # modulo is a method.. it is the reminder after division
#   # count / colors1.length = reminder
#   start = count.modulo(colors1.length)
#   # 0.modulo(10) = 0
#   # 8.modulo(10) = 8
#   # 10.modulo(10) = 0
#   # 11.modulo(10) = 1
#   # 18.modulo(10) = 8
#   first_half = colors1[start..-1]
#   second_half = colors1[0...start]
#   puts first_half + second_half
#   count += 1
# end

# # Method - 2
# colors2 = "RRGGBBYYKK"
# lines = 20
# lines.times do |i|
#   first = colors2[0]
#   rest = colors2[1..-1]
#   colors2 = rest + first
#   puts colors2
# end
#
# # Method - 3
# colors3 = "++~~*++*"
# lines = 20
# colors3_array = colors3.split("")
# # puts colors3_array.class # Array , colors3.class = String
# 1.upto(20) do |i|
#   start = colors3_array.shift # permanently changed.
#   # colors3_array = ["+", "~", "~", "*", "+", "+", "*"]
#   colors3_array << start # permanently changed.
#   # colors3_array = ["+", "~", "~", "*", "+", "+", "*", "+"]
#   puts colors3_array.join # "+~~*++*+" # temperory
#   # colors3_array = ["+", "~", "~", "*", "+", "+", "*", "+"]
# end
# 
# # Method - 4
# patterns1 = "=|/|/|=|/|"
# lines = 20
# halfway = (lines / 2).floor
# pattern1 = patterns1.split("")
# 1.upto(halfway) do |i|
#   first = pattern1.shift
#   pattern1 << first
#   puts pattern1.join
# end
# # pattern1 = ["=", "|", "/", "|", "/", "|", "=", "|", "/", "|"]
#
# pattern1.length.times do |x|
#   if pattern1[x] == "/"
#     pattern1[x] = "\\"
#   end
# end
# # we printed the end result.
# puts pattern1.join # =|\|\|=|\|
#
# # pattern1 = ["=", "|", "\", "|", "\", "|", "=", "|", "\", "|"]
# halfway.upto(lines) do |i|
#   last = pattern1.pop
#   pattern1.unshift(last)
#   puts pattern1.join
# end
