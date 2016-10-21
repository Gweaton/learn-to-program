#roman numerals to integers - so far only works for 'old-school' roman numerals
def roman_to_integer string

  numerals = {
    'i' => 1,
    'v' => 5,
    'x' => 10,
    'l' => 50,
    'c' => 100,
    'd' => 500,
    'm' => 1000 }

  count = 0
  last = 0

  index = string.length - 1
  while index >= 0
    c = string[index].downcase # gets downcase of input
    index -= 1
    val = numerals[c]
    if val == nil
      puts 'You have entered an invalid Roman Numeral!'
      return
    end
    if val < last
      val *= -1
    else
      last = val
    end
    count += val
  end
  puts count
end

puts "Please input some Roman numerals:"
nums = gets.chomp


roman_to_integer nums
