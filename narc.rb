# ! A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits it has E.g. 153 (3 digits)1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153 -- E.g. 1634 (4 digits) 1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634
# ! Your code must return true or false depending upon whether the given number is a Narcissistic number. The two examples above would return true. The example below would return false


def narcissistic_number(num)

  nums = num.digits
  power = nums.count

  num == nums.map { |num| num ** power }.sum

end

def narcissistic_number_iryna(num)

  digits = num.digits
  power = digits.length

  num == digits.reduce(0) { |sum,digit| sum + digit ** power }

end




pp narcissistic_number(153)
pp narcissistic_number(1634)
pp narcissistic_number(24)