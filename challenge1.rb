# Ruby to conver a number into a Roman Numeral.
number_map = [nil, "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X" ]
puts number_map[4] # "IV"
puts number_map[9] == "IX" # true

puts "*" * 20
# Hash
number_map1 = {
  1 => "I",
  2 => "II",
  3 => "III",
  4 => "IV",
  5 => "V",
  6 => "VI",
  7 => "VII",
  8 => "VIII",
  9 => "IX",
  10 => "X"
}
puts number_map1[4] # "IV"
puts number_map1[9] == "IX" # true

# In this case short hand won't work..
# number_map2 = {
#   1: "I",
#   2: "II",
#   3: "III",
#   4: "IV",
#   5: "V",
#   6: "VI",
#   7: "VII",
#   8: "VIII",
#   9: "IX",
#   10: "X"
# }
