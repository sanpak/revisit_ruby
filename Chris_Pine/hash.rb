
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
weirdHash = Hash.new

weirdHash[12] = 'monkeys'
weirdHash[[]] = 'emptiness'
weirdHash[Time.new] = 'no time like the present'

weirdHash.each do |typeName,type|
  puts typeName.to_s + ": " + type
end
