def add_matrix_nam(m1,m2)
  return nil if m1.size != m2.size

  m1.map.with_index { |a, idx| a.is_a?(Array) ? a.map.with_index { |b, dex| a[dex] += m2[idx][dex] } : m1[idx] += m2[idx] }
end

def add_matrix_june(m1,m2)
  if m1.length == m2.length
      matrix = m1.zip(m2)
      matrix.map { |e1,e2| (e1.is_a? Array) ? add_matrix(e1,e2) : e1+e2 }
  else 
      return nil
  end
end

def add_matrix_danny(m1,m2)

  if m1[0].class == Integer
      return one_dim_helper(m1, m2)
  else m1[0].class == Array
      return two_dim_helper(m1, m2)
  end
end

def one_dim_helper(m1, m2)
  return nil if m1.length != m2.length

  result = []
  for i in 0..(m1.length-1) do
      result.push(m1[i]+m2[i])
  end

  return result
end

def two_dim_helper(m1, m2)
  result = Array.new(m1.length){Array.new(m1[0].length)}
  for i in 0..(m1.length-1) do
      for ii in 0..(m1[0].length-1) do    
          result[i][ii] = m1[i][ii] + m2[i][ii]
      end
  end
  return result
end


# matrixA = [1,1,1]
# matrixB = [1,1,1]

# pp add_matrix(matrixA,matrixB)

# matrixA = [[1],[1],[1]]
# matrixB = [[1],[1],[1]]

# pp add_matrix(matrixA,matrixB)

matrixA = [[1,1,1],[1,1,1]]
matrixB = [[1,1,1],[1,1,1]]

pp add_matrix(matrixA,matrixB)

# matrixA = [[1,1],[1,1]]
# matrixB = [[1,1],[1,1]]

# pp add_matrix(matrixA,matrixB)

# matrixA = [[1,1],[1,1],[1,1]]
# matrixB = [[1,1],[1,1],[1,1]]

# pp add_matrix(matrixA,matrixB)

# matrixA = [[],[],[]]
# matrixB = [[],[],[]]

# pp add_matrix(matrixA,matrixB)

# matrixA = []
# matrixB = []

# pp add_matrix(matrixA,matrixB)

# matrixA = [1,1,1]
# matrixB = [1,1]

# pp add_matrix(matrixA,matrixB)