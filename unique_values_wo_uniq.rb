def unique_values (array)
  
  #* Create a new array for the 'filtered values'
  unique = []
  array.each do |x|
  unique << x unless unique.include?(x)
  end
  return unique

  # ! Alternative one-line method:
  array | array  #* >> shorthand for UNION 
  
end

pp unique_values([1, 2, 3, 3])
pp unique_values(["tom", "tom", "tom"])
pp unique_values(["which", "Which", "WITCH", "witch", "twitch", "twitch"])