
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def valid_move?(board, input_to_index)
  if input_to_index.between?(0, 8) && position_taken?(board, input_to_index) == true
    return false
    elsif input_to_index.between?(0, 8)
    return true
    elsif input_to_index > 8 
    return false
    elsif position_taken? 
    return nil
  end
end


def position_taken?(board, input_to_index)
  if board[input_to_index] == "" || board[input_to_index] == " " || board[input_to_index] == nil
    return false
    elsif board[input_to_index] == "X" || board[input_to_index] == "O"
    return true
  end 
  
end

def input_to_index(i)
  i = i.to_i
  index = i - 1
  
end

def move(board, index, player= "X")
  board[index] = player
end


def turn(board)
  puts "Please enter 1-9:"
  
  if valid_move?(board, index) == true
  end
    
  
end

