#Birthday Helper
def birthday_helper name
  names_list = []
  dates_list = []
  File.open("birth_dates.txt", "r") do |f|
    f.each_line do |line|
      splitted = line.split(", ")
      names_list.push(splitted[0])
      birthday = splitted[1] + ", " + splitted[2].chomp
      dates_list.push birthday
    end
  end

  chris = Hash[names_list.zip dates_list]

  bday = Time.new(chris[name][7..12], chris[name][0..2], chris[name][4..5])

  age = (Time.now.year - bday.year)


  puts "Chris(topher) is #{age} years old, and his birthday is #{chris[name]}"

end

puts "Which Chris' birthday would you like to find out?"
input = gets.chomp
puts birthday_helper input
