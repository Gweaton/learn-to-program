# toast = Proc.new do
#   puts 'Cheers!'
# end
#
# toast.call
# toast.call
# toast.call
#
# do_you_like = Proc.new do |good_stuff|
#   puts "I *really* like #{good_stuff}!"
# end
#
# do_you_like.call "chocolate"
# do_you_like.call "Ruby"

# def do_self_importantly some_proc
#   puts "Everybody just HOLD ON! I'm doing something!"
#   some_proc.call
#   puts "OK everyone, I'm done. As you were."
# end
#
# say_hello = Proc.new do
#   puts "Hello"
# end
#
# say_goodbye = Proc.new do
#   puts "Goodbye"
# end
#
# do_self_importantly say_hello
# do_self_importantly say_goodbye

def maybe_do some_proc
  if rand(2) == 0
    some_proc.call
  end
end

def twice_do some_proc
  some_proc.call
  some_proc.call
end

wink = Proc.new do
  puts '<wink>'
end

glance = Proc.new do
  puts '<glance>'
end

maybe_do wink
maybe_do wink
maybe_do glance
maybe_do glance
twice_do wink
twice_do glance
