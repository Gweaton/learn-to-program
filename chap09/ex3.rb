#"Modern" Roman numerals
def roman_numeral number
  count = ""

  count += "M" * (number / 1000)
  count += "D" * (number % 1000 / 500)
  count += "C" * (number % 500 / 100)
  count += "L" * (number % 100 / 50)
  count += "X" * (number % 50 / 10)
  count += "V" * (number % 10 / 5)
  count += "I" * (number % 5 / 1)

  puts count

end

puts "Give me a number to turn into Roman Numerals:"
input = gets.chomp

roman_numeral input
