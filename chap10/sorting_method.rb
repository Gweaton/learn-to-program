array_to_sort = []

def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  #taking care of empty lists
  if unsorted_array.length <= 0
    return sorted_array
  end
  # to find the smallest word in unsorted_array, start by taking the last in unsorted_array
  smallest = unsorted_array.pop
  still_unsorted = [] # to put back longer words and hold them until sorted

  unsorted_array.each do |word|
    if word < smallest # if word is shorter than smallest,
      still_unsorted.push smallest # we want to hold onto it and check it against longer words later on
      smallest = word # word is now the smallest, so we will push it to the sorted array at first position.
    else
      still_unsorted.push word # if word is longer than smallest, we'll hold onto it and check it later on
    end
  end

  sorted_array.push smallest # now adding the smallest word to the array
  # we now have an array with just the first alphabetical word
  # if we call the method recursively, this will repeat until unsorted_array <= 0, at which point we return sorted_array.

  recursive_sort still_unsorted, sorted_array
  #we use still_unsorted here as it will no longer have the popped smallest word, so it will decrease in size each time the recursive method is called.

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
  puts sort array_to_sort
