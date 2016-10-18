#Deaf Grandma
puts "HELLO GRANDSON!"
bye = "BYE BYE, MY DEAR!"
chat = " "

while chat != "BYE"
  chat = gets.chomp!

  if chat == "BYE"
    break
  end

  if chat != chat.upcase
    puts "HUH!? SPEAK UP, SONNY!"
  else year = "19" + (rand(21) + 30).to_s
    puts "NO, NOT SINCE #{year}"
  end
end
puts bye
