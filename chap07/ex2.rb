#Deaf Grandma
puts "HELLO GRANDSON!"
bye = "BYE BYE, MY DEAR!"
bye_count = 0

while true
  chat = gets.chomp!

  if chat == "BYE"
    bye_count += 1
  else
    bye_count = 0
  end
  if bye_count >= 3
    break
  end

  if chat != chat.upcase
    puts "HUH!? SPEAK UP, SONNY!"
  else
    year = "19" + (rand(21) + 30).to_s
    puts "NO, NOT SINCE #{year}"
  end
end
puts bye
