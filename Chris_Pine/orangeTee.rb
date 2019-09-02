class OrangeTree
  def initialize name
    @name = name
    @height = 0
    @age = 0
    @life = 20
    @oranges_count = 0
    @produce_fruit = false
    puts "#{name}, the orange tree is created"
  end

  def show_height
    @height
  end

  def show_fruits
    puts "oranges : #{@oranges_count}"
  end

  def show_age
    @age
  end

  def oneYearPasses
    @age += 1
    @height += 2
    passageOfTime
    produceFruit?
  end

  def pickAnOrange
    if @oranges_count > 0
      puts "one orange is picked"
      @oranges_count -= 1
      puts "so tasty!"
    else
      puts "there is no oranges to pick this year"
    end
  end

  private

  def passageOfTime
    @life -= 1
    if @life == 0
      puts "the orange tree is dead"
      exit
    end
    if @oranges_count > 1
      @oranges_count = 0
    end
  end

  def produceFruit?
    if @age > 5
      @produce_fruit = true
      @oranges_count = @oranges_count + 8
    end
  end

  def countTheOranges
    puts "#{@oranges_count} oranges has grown."
  end

end

orangeTree1 = OrangeTree.new "John"
orangeTree1.oneYearPasses
puts orangeTree1.show_age
orangeTree1.oneYearPasses
orangeTree1.oneYearPasses
orangeTree1.oneYearPasses
puts orangeTree1.show_age
orangeTree1.oneYearPasses
puts orangeTree1.show_age
orangeTree1.show_fruits
orangeTree1.oneYearPasses
orangeTree1.oneYearPasses
orangeTree1.oneYearPasses
# p orangeTree1.inspect
orangeTree1.show_fruits
orangeTree1.pickAnOrange
orangeTree1.show_fruits
orangeTree1.pickAnOrange
orangeTree1.pickAnOrange
orangeTree1.show_fruits
orangeTree1.pickAnOrange
orangeTree1.pickAnOrange
orangeTree1.pickAnOrange
orangeTree1.pickAnOrange
orangeTree1.pickAnOrange
orangeTree1.show_fruits
orangeTree1.pickAnOrange
orangeTree1.oneYearPasses
orangeTree1.show_fruits
orangeTree1.oneYearPasses
orangeTree1.oneYearPasses
orangeTree1.oneYearPasses
orangeTree1.show_fruits
puts orangeTree1.show_age
orangeTree1.oneYearPasses
orangeTree1.oneYearPasses
orangeTree1.oneYearPasses
orangeTree1.oneYearPasses
orangeTree1.oneYearPasses
puts orangeTree1.show_age
orangeTree1.oneYearPasses
orangeTree1.oneYearPasses
orangeTree1.oneYearPasses
