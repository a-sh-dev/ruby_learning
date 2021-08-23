# ! From Morning Challenges – Iryna's solution

def octal_convertor(num)
  
  base = 8
  remainders = []

  while num > 0
    remainders.unshift(num % base)
    num /= base
  end

  remainders.join.to_i

end