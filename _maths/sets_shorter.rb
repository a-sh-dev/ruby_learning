def intersection(set1, set2)

  intersection = set1 & set2
  pp intersection

end

def union(set1, set2) 

  union = set1 | set2
  pp union

end

def symmetric_difference(set1, set2)

  xor = (set1 - set2) | (set2 - set1)
  pp xor

end


intersection([1,2,3],[3,4,5])
union([1,2,3], [3,4,5])
union(["a", "b", "c"], ["d", "e", "f"])
symmetric_difference([1,2,3],[3,4,5])
