#Building & sorting

arr = []

while true
  puts "Please type an item to add to the list:"
  to_add = gets.chomp
  if to_add != ""
    arr.push(to_add)
    break
  end
end    

while to_add != ""
  puts "Please type another item to add (or press ENTER to print the list alphabetically):"
  to_add = gets.chomp
  arr.push(to_add)
end

arr.sort!
puts "Your list:"
puts arr
