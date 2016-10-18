#Table of contents mk.2

line_width = 60

contents = ["Table of Contents", ["Chapter 1: Getting Started", "page 1"], ["Chapter 2: Numbers", "page 9"], ["Chapter 3: Letters", "page 13"]]

puts contents[0].center(line_width)
contents[1..3].each do | chap, pg |
  puts chap.ljust(line_width/2) + pg.rjust(line_width/3)
end
