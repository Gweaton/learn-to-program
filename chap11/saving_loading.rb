filename = "ListerQuote.txt"
test_string = "I promise that I swear absolutely that " +
              "I will never mention gazpacho soup again."

File.open filename, 'w' do |f| # 'w' is for 'write access to the file
  f.write test_string # f points to the file. .write writes the test_string to the file.
end

read_string = File.read filename

puts(read_string == test_string)
