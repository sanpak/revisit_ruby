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
# def deaf_grandma
#   respond = ""
#   until respond == "BYE"
#     puts "Hello son. How are you?"
#     respond = gets.chomp
#       if respond == respond.upcase
#         puts "NO, NOT SINCE 19" + (30 + rand(20)).to_s
#       else
#         puts "HUG?! SPEAK UP, SONNY!"
#       end
#   end
#   puts "BYE"
# end
#
# deaf_grandma

#deaf grandma version 2
# def deaf_grandma
#   puts "Hello Son. How are you?"
#   i = 0
#   quite = ""
#   while true
#     respond = gets.chomp
#     if respond == "BYE"
#       i += 1
#       if i == 3
#         puts "BYE, SON!"
#         break
#       end
#     else
#       i = 0
#     end
#     if respond == respond.upcase
#       puts "NO, NOT SINCE 19" + (30 + rand(20)).to_s
#     else
#       puts "HUG?! SPEAK UP, SONNY!"
#     end
#
#   end
#
# end
#
# deaf_grandma

#leap year
# def leap_year(start_year,end_year)
#   # (start_year..end_year).select { |x| puts x if x % 4 == 0 || (x % 100 == 0 && x % 400 == 0) }
#   # this has faults
#   leap_year = []
#   while start_year < end_year
#     if start_year % 4 == 0
#       if start_year % 100 == 0 && start_year % 400 == 0
#         leap_year << start_year
#       end
#       leap_year << start_year
#     end
#     start_year += 1
#   end
#   puts leap_year
# end

#leap year2

def leap_year(start_year,end_year)
  (start_year..end_year).select { |x| puts x if test_leap_year(x) == true}
end

def test_leap_year(year)
  if year % 100 == 0
    if year % 400 == 0
      true
    else
      false
    end
  else
    if year % 4 == 0
      true
    end
  end
end

# leap_year(1900,1930)

def leap_year_v2(start_year,end_year)
  leap_years_output = []
  while start_year < end_year
    if start_year % 4 == 0
      if start_year % 100 != 0 || start_year % 400 == 0
        leap_years_output << start_year
      end
    end
    start_year += 1
  end
  leap_years_output
end
# puts leap_year_v2(1900,1930)


def leap_year_v3(start_year,end_year)
  (start_year..end_year).each do |year|
    next if year % 4 != 0
    next if year % 100 == 0 && year % 400 != 0
    puts year
  end
end

leap_year_v3(1900,1930)
# puts test_leap_year(1800)
# puts leap_year(1800,1850)
