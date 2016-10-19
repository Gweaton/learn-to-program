#Dictionary sort

array_to_sort = []

def dictionary_sort some_array
  dic_recursive_sort some_array, []
end

def dic_recursive_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end
  smallest = unsorted_array.pop
  still_unsorted = []
  unsorted_array.each do |word|
    if word.downcase < smallest.downcase # this is the only line that needs adding to - the values won't actually be changed in the next few lines, this is just for comparison.
      still_unsorted.push smallest
      smallest = word
    else
      still_unsorted.push word
    end
  end

  sorted_array.push smallest

  dic_recursive_sort still_unsorted, sorted_array

end

puts "Please enter a word:"
to_add = gets.chomp
array_to_sort.push to_add
while to_add != ""
  puts "Enter another to add to the list(press enter to return list):"
  if to_add == ""
    break
  else
    to_add = gets.chomp
    array_to_sort.push to_add
  end
end
  puts dictionary_sort array_to_sort
