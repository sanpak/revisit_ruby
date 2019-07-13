# puts '5'
# puts 'mix_it_up'
# puts '15'.to_f
# puts '99.999'.to_f
#
# puts '99.999'.to_i
# puts ''
#
# puts '5 is my favorite number!'.to_i
# puts "2 iasdjaisjda".to_i
#
# puts "Who asked you about 5 or whatever?".to_i
#
# puts 3.to_i
# puts 20.to_i
# puts "What's your name?"
puts "What's your first name?"
first_name = gets.chomp
puts "What's your middle name? type no if no middle name"
middle_name = gets.chomp
middle_name = " " if middle_name == "no"
puts "What's your last name?"
last_name = gets.chomp
puts "Hello " + first_name + " " + middle_name + " " + last_name
