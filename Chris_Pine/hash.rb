
# colorArray = []
# colorHash = {}
#
# colorArray[0] = "red"
# colorArray[1] = "green"
# colorArray[2] = "blue"
# colorHash['string'] = 'red'
# colorHash['number'] = 'green'
# colorHash['keywords'] = 'blue'
# p colorArray
# p colorHash
#
# colorArray.each do |color|
#   puts color
# end
#
# colorHash.each do |codeType, color|
#   puts codeType + ': ' + color
# end
#
# weirdHash = Hash.new
#
# weirdHash[12] = 'monkeys'
# weirdHash[[]] = 'emptiness'
# weirdHash[Time.new] = 'no time like the present'
#
# weirdHash.each do |typeName,type|
#   puts typeName.to_s + ": " + type
# end

# class Integer
#   def to_eng
#     if self == 5
#       english = 'five'
#     else
#       english = "fifty-eight"
#     end
#     english
#   end
# end
#
# puts 5.to_eng
# puts 58.to_eng
# puts 99.to_eng
# class Die
#   def roll
#     1 + rand(6)
#   end
# end
#
# dice = [Die.new,Die.new]
# dice.each do |die|
#   puts die.roll
# end
# class Die
#   def roll
#     @numberShowing = 1 + rand(6)
#   end
#
#   def showing
#     @numberShowing
#   end
# end
#
# die = Die.new
# puts die.showing
class Die
  def initialize
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

  def cheat=(side)
    @numberShowing = side
  end
end

newDie =  Die.new
newDie.cheat = 6
puts newDie.roll
newDie.cheat = 6
