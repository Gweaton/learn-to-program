#compose takes 2 procs and returns a new proc that calls the first and passes its result into the second:
def compose proc1, proc2
  Proc.new do |x| #saving output as a proc
    proc2.call(proc1.call(x)) # parentheses make proc1.call run first.
  end
end

square_it = Proc.new do |x|
  x * x
end

double_it = Proc.new do |x|
  x + x
end

double_then_square = compose double_it, square_it #another proc built with compose
square_then_double = compose square_it, double_it

puts double_then_square.call(5) #argument = 5
puts square_then_double.call(5)
