def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def input_to_index(string)
  return string.to_i - 1
end

def position_taken?(array, index)
  if (array[index] == " " || array[index] == "" || array[index] == nil)
    return false
  else
    return true
  end
end

def valid_move?(array, index)
  if (index < 0 || index > 8)
    return false
  elsif position_taken?(array, index)
    return false
  else
    return true
  end
end

def move(array, index, char = "X")
  if ( valid_move?(array, index) )
    array[index] = char
    return array
  else
    #do nothing
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  puts input
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
 
puts "Welcome to Tic Tac Toe!"

move(board, 4, "O")
move(board, 4, "X")
move(board, 5, "X")
move(board, 5, "O")

display_board(board)

turn(board)



















