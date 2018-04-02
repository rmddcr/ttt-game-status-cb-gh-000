# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]

def won?(board)
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return nil
  end
  i=0
  while i<9
  combination=WIN_COMBINATIONS[i]

  i=i+1
    if (board[combination[0]]=="X" && board[combination[1]]=="X" && board[combination[2]]=="X")

      return combination

    elsif (board[combination[0]]=="O" && board[combination[1]]=="O" && board[combination[2]]=="O")

        return combination
    else

    end



  end
  return false

end

def full?(board)
  index=-1
  board.all?  do |symbol|
    index +=1
    position_taken(board,index)
  end
end
