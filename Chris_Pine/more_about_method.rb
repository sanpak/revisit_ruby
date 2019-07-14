# lineWidth = 50
#
# puts ("Old Mother Hubbard".center(lineWidth))
# puts ("Sat in her cupboard".center(lineWidth))
# puts ("Eating hercurds an whey,".center(lineWidth))
#
# lineWidth = 40
# str = '--> text <--'
# puts str.ljust(lineWidth)
# puts str.rjust(lineWidth)
# puts str.center(lineWidth)
# puts str.ljust(lineWidth/2) + str.center(lineWidth/2)+ str.rjust(lineWidth/2)
#A few things to try

#no.1
#Angry boss
# puts "What do you want"
# want = gets.chomp
# puts "WHADDAYA MEAN " + '"' + want + '."' + "?!?" + "   YOU'RE FIRED!!"

#no.2
#Table of contents display
def table_of_contents
  lineWidth = 50
  table_name = "Table of Contents"
  colume1_label = "Chapter"
  colume2_label = ""
  colume3_label = "page"
  spacer = ""
  puts table_name.center(lineWidth)
  puts spacer
  puts (colume1_label + " 1:").ljust(lineWidth/4) + "Numbers".ljust(lineWidth/4) + (colume3_label+" 1").rjust(lineWidth/2)
  puts (colume1_label + " 2:").ljust(lineWidth/4) + "Letters".ljust(lineWidth/4) + (colume3_label+" 72").rjust(lineWidth/2)
  puts (colume1_label + " 3:").ljust(lineWidth/4) + "Variables".ljust(lineWidth/4) + (colume3_label+" 118").rjust(lineWidth/2)

end
table_of_contents

puts 5 ** 2
puts 5 ** 0.5
