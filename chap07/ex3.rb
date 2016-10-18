#Leap years
puts "Please give me a starting year:"
init_year = gets.chomp.to_i
puts "Now give me a final year:"
final_year = gets.chomp.to_i
puts "Now I'll show you all the leap years in between:"
current_year = init_year

while current_year <= final_year
  if current_year % 4 == 0
    if current_year % 100 != 0 || current_year % 400 == 0
      puts current_year
    end
  end

  current_year += 1
end
