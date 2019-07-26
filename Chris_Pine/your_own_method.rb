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

  return "zero" if left_side_numString == 0 && right_side_numStirng == 0

  return singles[right_side_numStirng - 1] if left_side_numString == 0
  return teens[right_side_numStirng - 1] if left_side_numString == 1
  return tenths[left_side_numString - 1] + "-"+ singles[right_side_numStirng - 1]
end

puts englishNumber(56)
