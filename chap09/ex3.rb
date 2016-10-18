#"Modern" Roman numerals
def roman_numeral number
  count = ""

  thousands = (number / 1000)
  hundreds = (number % 1000 / 100)
  tens = (number % 100 / 10)
  ones = (number % 10)

puts count += 'M' * thousands
  if hundreds == 9
    count += 'CM'
  elsif hundreds == 4
    count += 'CD'
  else
    count += 'D' * (number % 1000 / 500)
    count += 'C' * (number % 500 / 100)
  end

  if tens == 9
    count += 'XC'
  elsif tens == 4
    count += 'XL'
  else
    count += 'L' * (number % 100 / 50)
    count += 'X' * (number % 50 / 10)
  end

  if ones == 9
    count += 'IX'
  elsif ones == 4
    count += 'IV'
  else
    count += 'V' * (number % 10 / 5)
    count += 'I' * (number % 5 / 1)
  end

  puts count
end

puts "Give me a number to turn into Roman Numerals:"
input = gets.chomp.to_i

roman_numeral input
