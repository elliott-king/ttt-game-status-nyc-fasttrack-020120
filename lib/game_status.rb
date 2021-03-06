WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],

  [0,3,6],
  [1,4,7],
  [2,5,8],

  [0,4,8],
  [2,4,6]
]

def won?(board)
  # players = ["X", "O"]
  WIN_COMBINATIONS.each do |combo|
    first_position = board[combo[0]]
    if !first_position.nil? && first_position != " "
      if combo.all? {|space| board[space] == first_position}
        return combo
      end
    end
  end
  false
end

def full?(board)
  return board.all? {|space| space == "X" || space == "O"}
end

def draw?(board)
  return full?(board) && !won?(board)
end

def over?(board)
  return won?(board) || full?(board)
end

def winner(board)
  combo = won?(board)
  if combo
    return board[combo[0]]
  else
    return nil
  end
end


# puts full?(["X", "O", "X", "O", "X", "X", "O", "X", "O"])
# print won?(["X", "X", "X", "O", "O", " ", " ", " ", " "])

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
