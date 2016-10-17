#99 Bottles of Beer on the Wall

count = 99

while count > 1
  puts "#{count} bottles of beer on the wall, #{count} bottles of beer."
  count -= 1
  if count > 1
    puts "Take one down and pass it around, #{count} bottles of beer on the wall."
  elsif count == 1
    puts "Take one down and pass it around, #{count} bottle of beer on the wall."
    puts "#{count} bottle of beer on the wall, #{count} bottle of beer."
    puts "Take one down and pass it around, no more bottles of beer on the wall."
  end
end
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
