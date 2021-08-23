def add_matrix(m1,m2)
  result = []

# the problem: layers of arrays that can be confusing!
# for this challenge, max is 2 colums = x[0][0]
# pair the two matrix - zip
# dig until integer is found
# when integer is found, sum
# place result in array then push to output array
# proceed if the length is equal

if m1.length == m2.length

  # mzip = m1.zip(m2)
  # multi r&c: [ [1, 1], [1, 1] ] -> zip: [ [ [1, 1], [2, 2] ], [ [1, 1], [2, 2] ] ]
      # multi -- dig(0,0,0) Int
  
  # one col: [[1], [1], [1]] -> zip: [ [ [1], [7] ], [ [1], [11] ], [ [1], [10] ] ]
  # xc[0] -- dig(0,0,0) Int

  # one row: [1, 1, 1] -> zip: [ [1, 2], [1, 3], [1, 4] ]
      # xr[0] -- dig(0,0) Int
      # if mzip.dig(0,0) == Integer #one row
      #     result = mzip.map { |m| m.dig(0).sum }

      # elsif
      #     result = mzip.map { |m| m.dig(0,0) }
  cols = m1[0].length - 1
  # tmp = []
      mzip = m1[0].zip(m2[0])

  for i in (0..m1.length - 1) do
    
    if m1[0].class == Integer
      result << (m1[i] + m2[i])
          
          elsif # when there are multi columns
              cols > 1
              # mzip = [ [[1, 1, 1], [1, 1, 1]], [[1, 1, 1], [1, 1, 1]] ]
              tmp = mzip.each_with_index {|m,col| m[col].sum}
              result << tmp

    # elsif
      # cols.times do |col|
      # m1[0].count > 1 # when more than 1 column
      # result << [(m1[i][0] + m2[i][0), (m1[i][1] + m2[i][1)]
      # end
      # result << tmp
    # elsif
    # 	m1[0].count == 1 # 1 column
    # 	result << [(m1[i][0] + m2[i][0])]
    else  # when array is empty
      m1[i].empty?
      result << []
    end
  end
else
  # if length isn't equal return nil
  return nil
end
result
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