require_relative 'data'
require_relative 'helpers'

include Day4Helpers

bingo_moves = Day4Data::BINGO_MOVES
bingo_boards = Day4Data::BINGO_BOARDS
winning_score = 0

bingo_moves.each do |move|
  mark_boards!(bingo_boards, move)
  winning_boards = find_all_winners(bingo_boards)
  unless winning_boards.empty?
    if bingo_boards.length == 1
      winning_score = calculate_winning_sum(bingo_boards[0], move)
      break
    else 
      winning_boards.each { |board| bingo_boards.delete(board) }
    end
  end
end

p winning_score