# Examples inspired by U. S. National Organic Standards

ORGANIC_PRODUCE = [
  "Strawberries",
  "Potatoes",
  "Grapes",
  "Avocadoes",
  "Asparagus"
]

CONVENTIONAL_PRODUCE = [
  "Grapefruit",
  "Pineapple",
  "Oranges",
  "Watermelon",
  "Eggplant"
]

def assembled_matrix
  # Build an array that contains both of the above arrays
  # This matrix will represent a produce storage room
  # Organic standards require that organic products be stored ABOVE conventional, not the other way around
  # Make sure conventional produce is first, on the 'zeroth' / 'bottom' shelf
  assembled_matrix = Array.new
  assembled_matrix = assembled_matrix.push(CONVENTIONAL_PRODUCE)
  assembled_matrix = assembled_matrix.push(ORGANIC_PRODUCE)
  assembled_matrix
end

def sorted_matrix
  # Using Array literal syntax only, build another nested array that 
  # uses the arrays of conventional and organic produce as before.
  # However, this time, sort each internal array alphabetically by the first character
  sorted_matrix = []
  con_pro = CONVENTIONAL_PRODUCE.sort
  org_pro = ORGANIC_PRODUCE.sort
  sorted_matrix = sorted_matrix.push(con_pro)
  sorted_matrix.push(org_pro)
  sorted_matrix
end

def matrix_lookup(matrix, row, column)
  # Given any matrix (array of arrays), a row index and a column index, 
  # Return the matrix's content at that row and and column
  matrix[column][row]
end

def matrix_update(matrix, row, column, new_value)
  # Given any matrix (array of arrays), a row index and a column index, 
  # Update the matrix location at that row and column to have the value of new_value
  # Return the updated matrix
  matrix_update = matrix
  matrix_update[row][column] = new_value
  #binding.pry
  matrix_update
end
