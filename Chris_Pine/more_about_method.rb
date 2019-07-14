lineWidth = 50

puts ("Old Mother Hubbard".center(lineWidth))
puts ("Sat in her cupboard".center(lineWidth))
puts ("Eating hercurds an whey,".center(lineWidth))

lineWidth = 40
str = '--> text <--'
puts str.ljust(lineWidth)
puts str.rjust(lineWidth)
puts str.center(lineWidth)
puts str.ljust(lineWidth/2) + str.center(lineWidth/2)+ str.rjust(lineWidth/2)
