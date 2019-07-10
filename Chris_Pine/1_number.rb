# puts 1 + 2
# puts 54.32
# puts 0.001
#
# p 0.001.class
#
# puts 1.0 + 2.0
# puts 2.0 * 3.0
# puts 5.0 - 8.0
#
# puts 9 / 2
# puts 9.0 / 2.0
#
# puts 1 + 2
# puts 2* 3
# puts 5 - 8
# puts 9 / 4


def hours_in_year
  365 * 24
end

def mins_in_decade
  (hours_in_year * 60)  * 10
end

puts mins_in_decade

def seconds_old_am_i
  38 * hours_in_year * 60 * 60
end

# i = 1980
# while i < 2019
#   puts i += 4
# end

# def leaps_years(year)
#   while year < 2019
#     puts year += 4
#   end
# end
#
# leaps_years(1980)
# puts leap_years(3)

def leap_years(n)
  puts n
  return 0 if n >= 2019
  leap_years(n+4)
end

leap_years(1980)
# puts 1298000000
# puts seconds_old_am_i
def second_to_year
  1298000000 / 60 / 60 / 24 / 365
end

# puts second_to_year
