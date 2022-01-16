require_relative 'data'
require_relative 'helpers'

include Day4Helpers

bingo_moves = Day4Data::BINGO_MOVES
bingo_boards = Day4Data::BINGO_BOARDS
winning_score = 0

bingo_moves.each do |move|
  mark_boards!(bingo_boards, move)
  winning_board = find_first_winner(bingo_boards)
  if winning_board
    winning_score = calculate_winning_sum(winning_board, move)
    break
  end
end

p winning_score