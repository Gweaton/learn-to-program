class Die
  def initialize # as soon as an object is created, initialize is called on it automatically
    roll
  end
  def set n
    @number_showing = n
  end

  def roll
    @number_showing = 1 + rand(6) # instance variables are simply an objects variables - they last as long as the object does.
  end
  def showing
    @number_showing
  end
end

die = Die.new
puts die.showing
die.set 6
puts die.showing
puts die.roll
puts die.showing
die.set 6
puts die.showing
