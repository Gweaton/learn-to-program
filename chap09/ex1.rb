def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      return true if reply == 'yes'
      return false
    else
      puts 'Please answer "yes" or "no".'
    end
  end
  answer
end

puts "Hello, thanks for answering our questions:"
ask "Do you like eating tacos?"
ask "Do you like eating burritos?"
wets_bed = ask "Do you wet the bed?"
puts "Just a few more questions..."
ask "Do you like eating chimichangas?"
ask "Do you like eating flautas?"
puts
puts "Debriefing:"
puts "Thank you for answering our questions."
puts
puts "Wets bed? #{wets_bed}"
