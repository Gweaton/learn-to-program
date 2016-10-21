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

  splitted = string.downcase.split("")
  splitted.each do |letter|
	  count += numerals[letter]
  end
  puts count

end

puts "Please input some Roman numerals:"
nums = gets.chomp


roman_to_integer nums
