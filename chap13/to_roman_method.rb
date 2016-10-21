class Integer
  def roman_numeral
    count = ""

    thousands = (self / 1000)
    hundreds = (self % 1000 / 100)
    tens = (self % 100 / 10)
    ones = (self % 10)

  puts count += 'M' * thousands
    if hundreds == 9
      count += 'CM'
    elsif hundreds == 4
      count += 'CD'
    else
      count += 'D' * (self % 1000 / 500)
      count += 'C' * (self % 500 / 100)
    end

    if tens == 9
      count += 'XC'
    elsif tens == 4
      count += 'XL'
    else
      count += 'L' * (self % 100 / 50)
      count += 'X' * (self % 50 / 10)
    end

    if ones == 9
      count += 'IX'
    elsif ones == 4
      count += 'IV'
    else
      count += 'V' * (self % 10 / 5)
      count += 'I' * (self % 5 / 1)
    end

    puts count
  end
end

  puts "Give me a number to turn into Roman Numerals:"
  input = gets.chomp.to_i

input.roman_numeral
