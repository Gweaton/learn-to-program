#Happy birthday!

puts "What year were you born in?"
year = gets.chomp.to_i
puts "Which month? (Please enter in number format):"
month = gets.chomp.to_i
puts "What day?"
day = gets.chomp.to_i

years_old = (Time.new - Time.local(year, month, day)) / ( 60 * 60 * 24 * 365.25)

years_old.to_i.times do
  puts "HAPPY BIRTHDAY!"
  puts"SPANK!"
end
