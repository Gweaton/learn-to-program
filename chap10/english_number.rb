#english_number
def english_number number
  if number < 0
    return "Please enter a number zero or greater."
  end
  if number > 100
    return "Please enter a number 100 or less."
  end

  num_string = ""

  #left = how much we have left to write
  #write = part we are writing out.

  left = number
  write = left / 100 #how many hundreds?
  left = left - write * 100 #subtract hundreds

  if write > 0
    return 'one hundred'
  end

  write = left / 10 #how many tens?
  left = left - write * 10 #subtracting tens

  if write > 0
    if write == 1
      if left == 0
        num_string += 'ten'
      elsif left == 1
        num_string += 'eleven'
      elsif left == 2
        num_string += 'twelve'
      elsif left == 3
        num_string += 'thirteen'
      elsif left == 4
        num_string += 'fourteen'
      elsif left == 5
        num_string += 'fifteen'
      elsif left == 6
        num_string += 'sixteen'
      elsif left == 7
        num_string += 'seventeen'
      elsif left == 8
        num_string += 'eighteen'
      elsif left == 9
        num_string += 'nineteen'
      end

      left = 0 # digit in the ones place is already taken care of

    elsif write == 2
      num_string += 'twenty'
    elsif write == 3
      num_string += 'thirty'
    elsif write == 4
      num_string += 'fourty'
    elsif write == 5
      num_string += 'fifty'
    elsif write == 6
      num_string += 'sixty'
    elsif write == 7
      num_string += 'seventy'
    elsif write == 8
      num_string += 'eighty'
    elsif write == 9
      num_string += 'ninety'
    end

    if left > 0
      num_string += '-'
    end
  end

  write = left # How many ones left?
  left = 0 # subtract ones

  if write > 0
    if write == 1
      num_string += 'one'
    elsif write == 2
      num_string += 'two'
    elsif write == 3
      num_string += 'three'
    elsif write == 4
      num_string += 'four'
    elsif write == 5
      num_string += 'five'
    elsif write == 6
      num_string += 'six'
    elsif write == 7
      num_string += 'seven'
    elsif write == 8
      num_string += 'eight'
    elsif write == 9
      num_string += 'nine'
    end
  end
  if num_string == ''
    return 'zero'
  end
    num_string
end

puts english_number(0)
puts english_number(11)
puts english_number(99)
puts english_number(100)
puts english_number(55)
