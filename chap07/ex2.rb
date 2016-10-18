#Deaf Grandma
puts "HELLO GRANDSON!"
bye = "BYE BYE, MY DEAR!"
chat = gets.chomp!

while chat != "BYE"
  while chat != chat.upcase
    puts "HUH!? SPEAK UP, SONNY!"
    chat = gets.chomp!
  end
  break if chat == 'BYE' 
  year = "19" + (rand(21) + 30).to_s
  puts "NO, NOT SINCE #{year}"
  chat = gets.chomp!
end

puts bye
