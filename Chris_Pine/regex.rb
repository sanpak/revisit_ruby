def ip_address?(str)
  !!(str =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/)
end

x = "This is a test".scan(/\W+/)
p x

# p ip_address?("192.168.1.1")
# p ip_address?("1921.168.1.1")

# "This is a test".scan(/[aeiou]/) { |x| puts x }

# "This is a test".scan(/[a-m]/) { |x| puts x }

# puts "String has vowels" if "This is a test".match(/[aeiou]/)

# x = "The car costs $1000 and the cat cost $10"
#
# x.scan(/\d+/) do |x|
#   puts x
# end
#
# x.scan(/\d/) do |x|
#   puts x
# end
#
# x.scan(/\w?/) do |x|
#   puts x
# end
#
#
# # x = "This is a test"
# # y = "This123 a 34test 34."
# # puts x.sub(/^../,"Hello")
# #
# # puts x.sub(/..$/,"Hello")
# #
# # puts x.sub(/...$/,"begin")
# # x.scan(/./) { |letter| puts letter}
# # x.scan(/\w\w/) { |letter| puts letter}
# # puts
# # y.scan(/\w\w/) { |letter| puts letter}
# # puts
# # y.scan(/../) { |letter| puts letter}
