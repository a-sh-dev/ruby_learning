# ! Included Only Once
# ? Write a method that takes an array and a string as arguments. Return true if the string is found in the array only once. Otherwise return false.

def included_once_v1 (array, string)
  
  array.count(string) == 1

end

def included_once_v2 (array, string)
  
  copy = array.map(&:strip)
  copy.count(string.strip) == 1

end

def included_once_v3 (array, string)
  
  array.uniq.length == array.length

end

puts "  ---v1"
puts included_once_v1(['hello', 'hi',' hi'], 'hi')
puts included_once_v1(['hello', 'hi', 'hey'], 'hi')
puts included_once_v1(['hello', 'hey', 'hey'], 'hi')
puts included_once_v1(['hello', 'hi', 'hey', 'HI'], 'hi')


puts "  ---v2"
puts included_once_v2(['hello', 'hi',' hi'], 'hi')
puts included_once_v2(['hello', 'hi', 'hey'], 'hi')
puts included_once_v2(['hello', 'hey', 'hey'], 'hi')
puts included_once_v2(['hello', 'hi', 'hey', 'HI'], 'hi')


puts "  ---v3"
puts included_once_v3(['hello', 'hi',' hi'], 'hi')
puts included_once_v3(['hello', 'hi', 'hey'], 'hi')
puts included_once_v3(['hello', 'hey', 'hey'], 'hi')
puts included_once_v3(['hello', 'hi', 'hey', 'HI'], 'hi')


