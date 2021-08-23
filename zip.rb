# ! From HackerRank

def compareTriplets(a, b)
  alice = 0
  bob = 0
  
  a.zip(b).each do |a_val, b_val|
    if a_val > b_val
      alice += 1
    else # a_val < b_val
      bob += 1
    end
  end
  return [alice, bob]
  end
  
  pp compareTriplets([1, 10, 99, 55], [90, 4, 16, 66])