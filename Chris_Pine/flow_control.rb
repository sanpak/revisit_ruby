#
#
# # puts 1 > 2
# # puts 1 < 2
# #
# # puts 'CAT' < 'cat'
# # puts 'cat' > 'CAT'
# # puts 'cat' < 'CAT'
#
# # puts 'Hello, what\'s your name?'
# # name = gets.chomp
# # puts 'Hello, ' + name + '.'
# # if name == 'Chris'
# #   puts 'What a lovely name!'
# # end
#
# #bracnhing
# # puts 'I am a fortune-teller. Tell me your name:'
# # name = gets.chomp
# #
# # if name == 'Chris'
# #   puts 'I see great things in your future.'
# # else
# #   puts 'Your future is ... Oh my! Look at the time!'
# #   puts 'I really have to go, sorry!'
# # end
#
# puts 'Hello, and welcome to 7th grade English.'
# puts 'My name is Mrs. Gabbard. And your name is...?'
# name = gets.chomp
# if name == name.capitalize
#   puts 'Please take a seat, ' + name + '.'
# else
#   puts name + '? You mean ' + name.capitalize + ', right?'
#   puts 'Don\'t you even know how to spell your name??'
#   reply = gets.chomp
#
#   if reply.downcase == 'yes'
#     puts 'Hmmph! Well, sit down!'
#   else
#     puts 'GET OUT!!'
#   end
# end

#looping

# command = ''
#
# while command != 'bye'
#   puts command
#   command = gets.chomp
# end
#
# puts 'Come again soon!'
# iAmChris = true
# iAmPurple = false
# iLikeFood = true
# iEatRocks = false
#
# puts iAmChris && iLikeFood
# puts iLikeFood && iEatRocks
# puts iAmPurple && iLikeFood
# puts iAmPurple && iEatRocks
#
# puts
# puts iAmChris || iLikeFood
# puts iLikeFood || iEatRocks
# puts iAmPurple || iLikeFood
# puts iAmPurple || iEatRocks
# puts
# puts !iAmPurple

#A few things to try
#99 bottles beer on the wall lyrics
# i = 99
#  while i != 1
#    puts " #{i} bottles of beer on the wall, #{i} bottles of beer. Take one down and pass it around, #{i-1} bottles of beer on the wall. "
#    i -= 1
#  end
#
#  puts "1 bottles of beer on the wall, 1 bottles of beer. Take one down and pass it around, no more bottles of beer on the wall."
#  puts "no more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
#deaf grandma program
def deaf_grandma
  puts "Hello son. How are you?"
  respond = gets.chomp
  until respond == "BYE"
    puts "HUG?! SPEAK UP, SONNY!"
    respond = gets.chomp
    puts "NO, NOT SINCE 19" + (30 + rand(20)).to_s if respond == respond.upcase
  end
  puts "BYE"
end

deaf_grandma
