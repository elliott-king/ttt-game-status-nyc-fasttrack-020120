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
      print combo
      if combo.all? {|space| board[space] == first_position}
        return combo
      end
    end
  end
  false
end

# puts won?(["X", "O", "X", "O", "X", "X", "O", "X", "O"])
print won?(["X", "X", "X", "O", "O", " ", " ", " ", " "])

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
