#Orange tree
class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @bears_fruit = false
    @orange_count = 0

    puts "Your orange tree starts as a tiny sapling."
  end

  def height
    puts "Your orange tree is #{@height}ft tall."
  end

  def count_the_oranges
    puts @orange_count
  end

  def one_year_passes
    @age += 1
    @height += 2
    @orange_count = 0
    puts "All remaining oranges on your tree fall to the ground :(."
    if @height >= 20
      puts "Your orange tree has died... RIP."
      exit
    elsif @age > 2
      @orange_count += (3 * @age)
      puts "There are #{@orange_count} juicy oranges on your tree!"
    else
      puts "Your tree is still too young to bear fruit :(."
    end
  end

  def pick_an_orange
    if @orange_count >= 0
      puts "There are no oranges on your tree! Try waiting til next year."
    elsif @orange_count == 1
      puts "You pick the last orange from the tree. You'll have to wait until next year for more oranges!"
      @orange_count -= 1
    else
      puts "You pick a delicious orange from the tree!"
      @orange_count -=1
    end
  end

end

tree = OrangeTree.new
tree.height
tree.count_the_oranges
tree.one_year_passes
tree.pick_an_orange
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.pick_an_orange
tree.count_the_oranges
tree.height
tree.pick_an_orange
tree.pick_an_orange
12.times do
  tree.one_year_passes
end
