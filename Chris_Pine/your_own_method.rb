def englishNumber(number)
  singles = ["one","two","three","four","five","six","seven","eight","nine"]
  teens = ["eleven","twelve","thirteen","forthteen","fifthteen","sixteen","seventeen","eighteen","nineteen"]
  tenths = ["ten","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninty"]
  if number < 0
    return "Please enter a number zero or greater."
  end
  if number > 100
    return "Please enter a number 100 or lesser."
  end
  numString = ""

  left = number

  write = left / 10
  left = left % 10

  return "zero" if write == 0 && left == 0

  return singles[left - 1] if write <= 0 && left > 0
  return teens[left - 1] if write == 1 && left > 0
  return tenths[0] if write == 1 && left == 0
  return tenths[write - 1] if write > 0 && left == 0
  return tenths[write - 1] + "-"+ singles[left - 1]
end

# puts englishNumber(10)


def englishNumber_v2(number)

  if number < 0
    puts "enter numbers greater than zero"
  end

  if number > 100
    puts "enter numbers less than zero"
  end

  numString = ""

  left = number

  write = left / 10
  left = left % 10

  if write > 0
    if write == 1
      if left == 0
        numString += "ten"
      elsif left == 1
        numString += "eleven"
      elsif left == 2
        numString += "tewlve"
      elsif left == 3
        numString += "thirteen"
      elsif left == 4
        numString += "forteen"
      elsif left == 5
        numString += "fifteen"
      elsif left == 6
        numString += "sixteen"
      elsif left == 7
        numString += "seveteen"
      elsif left == 8
        numString += "eighteen"
      elsif left == 9
        numString += "nineteen"
      end
      left = 0
    elsif write == 2
      numString += "Twenty"
    elsif write == 3
      numString += "Thirty"
    elsif write == 4
      numString += "Forty"
    elsif write == 5
      numString += "Fifty"
    elsif write == 6
      numString += "sixty"
    elsif write == 7
      numString += "seventy"
    elsif write == 8
      numString += "eighty"
    elsif write == 9
      numString += "ninty"
    end

    if left > 0
      numString += "-"
    end

    write = left
    left = 0

    if write == 1
      numString += "one"
    elsif write == 2
      numString += "two"
    elsif write == 3
      numString += "three"
    elsif write == 4
      numString += "four"
    elsif write == 5
      numString += "five"
    elsif write == 6
      numString += "six"
    elsif write == 7
      numString += "seven"
    elsif write == 8
      numString += "eight"
    elsif write == 9
      numString += "nine"
    end

    if numString == ""
      numString = "zero"
    end

    numString
  end

end

# puts englishNumber_v2(97)
def englishNumber_v3(number)
  numString = ""
  onesPlace = ["one","two","three","four","five","six","seven","eight","nine"]
  tenthPlace = ["ten","twenty","thirty","forty","Fifty","sixty","seventy","eighty","ninty"]
  teens = ["eleven","twenty","thirteen","forteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
  if number < 0
    puts "Enter number greater than zero"
  end
  if number == 0
    puts "zero"
  end


  left = number
  write = left / 100
  left = left % 100

  if write > 0
    hundred = englishNumber_v3(write)
    numString = numString + hundred + " hundred"
    if left > 0
      numString += " "
    end
  end

  write = left / 10
  left = left % 10

  if write > 0
    if write == 1 && left > 0
      numString += teens[left- 1]
      left = 0
    else
      numString += tenthPlace[write - 1]
    end
    if left > 0
      numString += "-"
    end
  end

  write = left
  left = 0

  if write > 0
    numString += onesPlace[write -1]
  end
  numString
end
#puts englishNumber_v3(121)

def my_englishNumber(number)
  numString = ""
  onesPlace = ["one","two","three","four","five","six","seven","eight","nine"]
  tenthPlace = ["ten","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninty"]
  teens = ["eleven","twelve","thirteen","forteen","fifteen","sixteen","seventeen","eighteen","ninteen"]


  left = number
  write = left / 1000000
  left = left % 1000000


  if write > 0
    million = my_englishNumber(write)
    numString = numString + million + " million" + " and "
  end

  write = left / 1000
  left = left % 1000

  if write > 0
    thousand = my_englishNumber(write)
    numString = numString + thousand + " thousand" + " and "
  end

  write = left / 100
  left = left % 100

  if write > 0
    hundred = my_englishNumber(write)
    numString = numString + hundred + " hundred" + " and "
  end

  write = left / 10
  left = left % 10

  if write > 0
    if write == 1 && left > 0
      numString = numString + teens[left - 1]
      left = 0
    else
      numString += tenthPlace[write -1]
    end
    if left > 0
      numString += " and "
    end
  end
  write = left
  left = 0

  if write > 0
    numString += onesPlace[write -1]
  end
  numString
end

puts my_englishNumber(21000)