line_width = 50

puts ("       This is the first line of a poem,".center(line_width))
puts ("                Here is the second line,".center(line_width))
puts ("         I can't think of much to write,".center(line_width))
puts ("             But this is almost a rhyme.".center(line_width))

puts ("       This is the first line of a poem,".ljust(line_width))
puts ("                Here is the second line,".rjust(line_width))
puts ("         I can't think of much to write,".ljust(line_width))
puts ("             But this is almost a rhyme.".rjust(line_width/2))
