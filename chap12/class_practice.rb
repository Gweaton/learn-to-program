alpha = Array.new + [12345] #Array.new creates an empty array
beta = String.new + "Hello" #String.new creates an empty string
karma = Time.new # gets current time at loading of the program.

puts "alpha = #{alpha}"
puts "beta = #{beta}"
puts "karma = #{karma}"

# Time class

# Adding 1.5 to a time = 1.5 seconds later.
puts karma + 60 # one minute later
puts Time.local(2016, 06, 03) #sets a specific time, local time zone.
puts Time.gm(2016, 06, 03) #sets specific GMT time

#earlier time < later time
