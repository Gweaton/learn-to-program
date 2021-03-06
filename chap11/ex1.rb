Dir.chdir '/Users/georgeeaton/Pictures'

pic_names = Dir['**/*.jpg'] #finding all pictures to be moved

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts

print "Downloading #{pic_names.length} files: "

pic_number = 1 #counter

pic_names.each do |name|
  print '.' #progress bar

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  #renames the picture & moved the file to the current working directory.

  File.rename name, new_name

  pic_number += 1
end

puts
puts "Done!"
