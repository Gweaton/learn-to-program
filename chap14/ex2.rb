#Grandfather Clock
#calls a block once for each hour that has passed today

def grandfather_clock &block
  hour = Time.new.hour
  if hour >= 13
    hour -= 12
  end
  if hour == 0
    hour = 12
  end
  hour.times do
    block.call
  end
end

grandfather_clock do |ignore|
  puts 'DONG!'
end

grandfather_clock {|ignore| puts 'DING!'}
