#Shuffle
#Takes an array and returns a totally shuffled version.

def shuffle arr
  shuf = [] # array to store the shuffled values
  while arr.length > 0
    rand_index = rand(arr.length) # picks element with random index based on arr.length
    curr_index = 0
    new_arr = []
    arr.each do |item|
      if curr_index == rand_index # adds the random element to the shuf array
        shuf.push item
      else
        new_arr.push item # new_arr will hold the non-shuffled items
      end
      curr_index = curr_index + 1
    end
    arr = new_arr # new_arr is a smaller array without the random_index element, which will decrease in size.
  end
  shuf
end


 puts shuffle [1,2,3,4]
