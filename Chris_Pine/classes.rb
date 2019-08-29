
#
# a = Array.new + [1123]
# p a
# b = String.new + 'hello'
# p b
#
# c =Time.new
# p c
#
# puts 'a =' + a.to_s
# puts 'b =' + b.to_s
# puts 'c = ' + c.to_s
#
# time = Time.new
# p time  + 60
def one_bill_seconds(year,month,date,hour,min,sec)
  born_time = Time.mktime(year,month,date,hour,min,sec)
  return born_time + 100000000
end
#p one_bill_seconds(1981,9,13,9,0,30)
def happy_birthday
  puts "What year did you born?"
  born_year = gets.chomp.to_i
  puts "What month did you born?"
  month = gets.chomp.to_i
  puts "What day did you born"
  day = gets.chomp.to_i
  age = -1

  born_time = Time.mktime(born_year,month,day)
  now_time = Time.new
  now_time_year = now_time.to_s.split(" ")[0].split("-")[0].to_i

  #don't need these
  # now_time_month = now_time.to_s.split(" ")[0].split("-")[1].to_i
  # now_time_day = now_time.to_s.split(" ")[0].split("-")[2].to_i

  while born_year <= now_time_year
    if Time.mktime(born_year,month,day) < now_time
      puts "SPANG! #{born_year} - #{month} - #{day}"
      age += 1
    end
    born_year += 1
  end
  puts " your age is #{age}"
end

puts happy_birthday

def print_leap_year(start_year,end_year)
  (start_year..end_year).select { |year| leap_year?(year)  }
end

def leap_year?(year)
  if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
    return true
  else
    return false
  end
end

 # p leap_year?(1980)

# puts print_leap_year(1800,1830)

def seconds_in_a_year
  return 60 * 60 * 24 * 365
end
