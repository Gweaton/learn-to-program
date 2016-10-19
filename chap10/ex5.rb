# Ninety-nine Bottles of Beer on the Wall

def english_number number
  if number < 0
    return "Please enter a number that isn't negative"
  end
  if number == 0
    return "zero"
  end

  num_string = ""

  ones_place = ["one", "two", "three",
                "four", "five", "six",
                "seven", "eight", "nine"]

  tens_place = ["ten", "twenty", "thirty",
                "fourty", "fifty", "sixty",
                "seventy", "eighty", "ninety"]

  teenagers =  ["eleven", "twelve", "thirteen",
                "fourteen", "fifteen", "sixteen",
                "seventeen", "eighteen", "nineteen"]

  zillions = [['hundred', 2],
              ['thousand', 3],
              ['million', 6],
              ['billion', 9],
              ['trillion', 12],
              ['quadrillion', 15]]


  left = number

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left / zil_base
    left = left - write * zil_base

  if write > 0
    prefix = english_number write
    num_string += prefix + ' ' + zil_name
    if left > 0
      num_string = num_string + ' '
    end
  end
end

  write = left / 10
  left = left - write * 10

  if write > 0
    if ((write == 1) and (left > 0))
      num_string += teenagers[left-1]
      left = 0
  else
    num_string += tens_place[write-1]
  end

  if left > 0
    num_string += '-'
  end
end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string
end

count = 9999

while count > 1
  puts "#{english_number count} bottles of beer on the wall, #{english_number count} bottles of beer."
  count -= 1
  if count > 1
    puts "Take one down and pass it around, #{english_number count} bottles of beer on the wall."
  elsif count == 1
    puts "Take one down and pass it around, #{english_number count} bottle of beer on the wall."
    puts "#{english_number count} bottle of beer on the wall, #{english_number count} bottle of beer."
    puts "Take one down and pass it around, no more bottles of beer on the wall."
  end
end
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
