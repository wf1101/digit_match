# Thought process: Compare last digit of number1 and number2, thenlet number1 and number2 devide by 10, loop the process until one of the digit hits 0
# Time complexity: O(m) - m is the smaller number of digits of number1 or number2
# Space complexity: O(1)
def digit_match(number1, number2)
  return 0 if number1.nil? || number2.nil?
  count = 0
  while number1 > 0 && number2 > 0
    if number1 % 10 == number2 % 10
      count += 1
    end
    number1 = number1 / 10
    number2 = number2 / 10
  end
  return count
end
