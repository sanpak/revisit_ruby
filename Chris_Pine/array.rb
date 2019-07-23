# []
# [5]
# ['Hello','Goodbye']
#
# flavor = 'vanilla'
# a = [89.9,flavor,[true,false]]
# # p a[3]
#
# languages = ['English','German','Ruby']
# languages.each do |lang|
#   puts 'I love ' + lang + '!'
#   puts 'Don\'t you?'
# end
#
# puts 'And let\'s hear it for C++!'
# puts '...'
# 3.times do
#   puts 'Hip-Hip-Hooray!'
# end
# foods = ['artichoke','brioche','caramel']
# puts foods
# puts
# puts foods.to_s
# puts
# puts foods.join(',')
# puts
# puts foods.join(' :) ') + '  8)'
#
# 200.times do
#   puts []
# end
def sort_input_words
  word_array = []
  puts "Type in your words"
  word = "start"
    while word != ""
      word = gets.chomp
      word_array << word
    end
  puts word_array.sort
end

def sort_input_words_v2
  word_array = []
  puts "Type in your words"
  while true
    word = gets.chomp
    break if word == ""
    word_array << word
  end
  p word_array.sort!
end
# sort_input_words_v2
def sort_input_words_v3
  word_array = []
  puts "Type in your words"
  while true
    word = gets.chomp
    break if word == ""
    word_array << word
  end

end

def my_own_sort(words)
  i = 0
  sorted = false
  while sorted != true
    i = 0
    while i < words.length - 1
      if words[i] > words[i+1]
        words[i],words[i+1] = words[i+1],words[i]
        sorted = true
      else
        sorted = false
      end
      i += 1
    end
  end
  return words
end

# puts my_own_sort(["apple","john"])
def test_my_own_sort(words)
  i = 0
  k = 0
  while k < words.length - 1
    i = 0
    swapped = false
    while i < (words.length - k) - 1
      if words[i] > words[i+1]
        words[i],words[i+1] = words[i+1],words[i]
        swapped = true
      end
      i += 1
    end
    k += 1
    break if swapped == false
  end
  return words
end
puts test_my_own_sort(["banana","apple","john","cat","dog","cd"])
