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

# puts my_englishNumber(21215)


def my_englishNumber_zillions(num)
  if num < 0
    return "Please enter a number that is not negative"
  end
  if num == 0
    return "zero"
  end
  numString = ""
  onesPlace = ["one","two","three","four","five","six","seven","eight","nine"]
  tenthPlace = ["ten","twenty","thirty","fouty","fifty","sixty","seventy","eighty","ninty"]
  teens = ["eleven","twelve","thirteen","forteen","fifteen","sixteen","seventeen","eighteen","ninteen"]

  zillions = [ ["hundred",2], ["thousand",3], ["million",6], ["billion",9], ["trillion",12],
              ["quadrillion",15],["quintillion",18],["sextillion",21], ["septillion",24],
              ["octillion",27], ["nonillion",30], ["decillion",33], ["undecillion",36],
              ["duodecillion",39], ["tredecillion",42], ["quattuordecillion",45], ["quindecillion", 48],
              ["sexdecillion",51], ["septendecillion",54], ["octodecillion", 57], ["novemdecillion",60],
              ["vigintillion",63], ["googol",100] ]
  left = num
  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]

    write = left / zil_base
    left = left % zil_base

    if write > 0
      prefix = my_englishNumber_zillions(write)
      numString = numString + prefix + " " + zil_name
      if left > 0
        numString += " "
      end
    end
  end

  write = left / 10
  left = left % 10

  if write > 0
    if write == 1 && left > 0
      numString += teens[left - 1]
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
    numString += onesPlace[write - 1]
  end
  numString
end

def englishNumber_zillions(number)
  numString = ""
  onesPlace = ["One","Two","Three","Four","Five","Six","Seven","Eight","Nine"]
  tenthPlace = ["Ten","Twenty","Thity","Forty","Fifty","Sixty","Seventy","Eighty","Ninty"]
  teens = ["Eleven","Twelve","Thirteen","Forteen","Fifteen","Sixteen","Seventeen","Eighteen","Ninteen"]
  zillions = [ ["Hundred",2],["Thousand",3],["Million",6],["Brillion",9],["Trillion",12],["Quadrillion",15] ]

  left = number
  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]

    write = left / zil_base
    left = left % zil_base

    if write > 0
      prefix = englishNumber_zillions(write)
      numString = numString + prefix + " " + zil_name
      if left > 0
        numString += " "
      end
    end
  end

  write = left / 10
  left = left % 10

  if write > 0
    if write == 1 && left > 0
      numString += teens[left - 1]
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
    numString += onesPlace[write - 1]
  end
  numString
end

puts englishNumber_zillions(9999)
