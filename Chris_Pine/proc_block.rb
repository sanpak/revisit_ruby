def profile descriptionOfBlock, &block
  startTime = Time.now
  block.call
  duration = Time.now - startTime
  puts descriptionOfBlock + " : " + duration.to_s + " seconds"
end

# profile "25000 doublings" do
#   number = 1
#   25000.times do
#     number = number + number
#   end
#   puts number.to_s.length.to_s + " digits"
# end

# array = [20,4,3,1,50,40,30,15,23,30]
# profile "bubble sort" do
#   i = 0
#   swapped = true
#   while swapped
#     swapped = false
#     i = 0
#     if array[i] > array[i + 1]
#       array[i],array[i + 1] = array[i + 1],array[i]
#       swapped = true
#     end
#     i += 1
#   end
#   array
# end
array = [20,4,3,1,50,40,30,15,23,30]
array2 = [20,4,3,1,50,40,30,15,23,30]
def bubble_sort(array)
  i = 0
  swapped = true
  while swapped
    i = 0
    swapped = false
    while i < array.length - 1
      if array[i] > array[i + 1]
        array[i],array[i + 1] = array[i + 1],array[i]
        swapped = true
      end
      i += 1
    end
  end
  array
end

profile "bubble_sort" do
  i = 0
  swapped = true
  while swapped
    i = 0
    swapped = false
    while i < array.length - 1
      if array[i] > array[i + 1]
        array[i],array[i + 1] = array[i + 1],array[i]
        swapped = true
      end
      i += 1
    end
  end
  p array
end

def bubble_sort_recursive(array,n)
  return array if n == 0

  i = 0
  while i < array.length - 1
    if array[i] > array[i + 1]
      array[i],array[i + 1] = array[i + 1],array[i]
    end
    i += 1
  end
  bubble_sort_recursive(array,n-1)
end

profile "bubble_sort_recursive" do
  p bubble_sort_recursive(array2,array2.length - 1)
end




# p bubble_sort(array2)

# profile "count to a million" do
#   number = 0
#   1000.times do
#     number = number + 1
#   end
# end
# class Array
#   def eachEven(&wasABlock_nowAProc)
#     isEven = true
#     self.each do |object|
#       if isEven
#         wasABlock_nowAProc.call object
#       end
#       isEven = (not isEven)
#     end
#   end
# end
#
# ['apple','bad apple','cherry','durian'].eachEven do |fruit|
#   puts "Yum! I just love " + fruit + " pies, dont you?"
# end
#
# [1,2,3,4,5].eachEven do |oddBall|
#   puts oddBall.to_s + " is NOT an even number!"
# end
#
#
# # def compose proc1,proc2
# #   Proc.new do |x|
# #     proc2.call(proc1.call(x))
# #   end
# # end
# #
# #   squareIt = Proc.new do |x|
# #     x * x
# #   end
# #
# #   doubleIt = Proc.new do |x|
# #     x + x
# #   end
# #
# #   doubleThenSquare = compose doubleIt, squareIt
# #   squareThenDouble = compose squareIt, doubleIt
# #   puts doubleThenSquare.call(5)
# #   puts squareThenDouble.call(5)
# # # def doUntilFalse firstInput, someProc
# # #   input = firstInput
# # #   output = firstInput
# # #
# # #   while output
# # #     input = output
# # #     output = someProc.call input
# # #   end
# # #   input
# # # end
# # #
# # # buildArrayOfSquares =Proc.new do |array|
# # #   lastNumber = array.last
# # #   if lastNumber <= 0
# # #     false
# # #   else
# # #     array.pop
# # #     array << lastNumber * lastNumber
# # #     array << lastNumber - 1
# # #   end
# # # end
# # #
# # # alwaysFalse = Proc.new do |justIgnoreMe|
# # #   false
# # # end
# # #
# # # puts doUntilFalse([5],buildArrayOfSquares).inspect
# # # puts doUntilFalse("I\'m writing this at 3:00am; someone knock me out!",alwaysFalse).inspect
# # # # def maybeDo someProc
# # # #   if rand(2) == 0
# # # #     someProc.call
# # # #   end
# # # # end
# # # #
# # # # def twiceDo someProc
# # # #   someProc.call
# # # #   someProc.call
# # # # end
# # # #
# # # # wink = Proc.new do
# # # #   puts "<wink>"
# # # # end
# # # #
# # # # glance =Proc.new do
# # # #   puts "<glance>"
# # # # end
# # # #
# # # # maybeDo wink
# # # # maybeDo glance
# # # # twiceDo wink
# # # # # def doSelfImportantly someProc
# # # # #   puts "Everybody just HOLD ON! I have something to do..."
# # # # #   someProc.call
# # # # #   puts "Ok everyone, I \'m done. Go on with what you were doing."
# # # # # end
# # # # #
# # # # # sayHello = Proc.new do
# # # # #   puts "hello"
# # # # # end
# # # # #
# # # # # sayGoodbye = Proc.new do
# # # # #   puts "Goodbye"
# # # # # end
# # # # #
# # # # # doSelfImportantly sayHello
# # # # # doSelfImportantly sayGoodbye
# # # # #
# # # # #
# # # # # # # toast = Proc.new do
# # # # # # #   puts "Cheers!"
# # # # # # # end
# # # # # # #
# # # # # # # toast.call
# # # # # # # toast.call
# # # # # # # toast.call
# # # # # # #
# # # # # #
# # # # # #
# # # # # # #
# # # # # # doYouLike = Proc.new do |aGoodThing|
# # # # # #   puts "I * really * like " + aGoodThing+ "!"
# # # # # # end
# # # # # #
# # # # # # doYouLike.call "chocolate"
# # # # # # doYouLike.call "ruby"
