module Day4Helpers

    WINNING_LINES = [[0, 1, 2, 3, 4], [5, 6, 7, 8, 9], [10, 11, 12, 13, 14], [15, 16, 17, 18, 19], [20, 21, 22, 23, 24], [0, 5, 10, 15, 20], [1, 6, 11, 16, 21], [2, 7, 12, 17, 22], [3, 8, 13, 18, 23], [4, 9, 14, 19, 24]]

    def find_first_winner(boards)
        boards.each { |board| return board if won?(board) }
        nil
    end

    def won?(board)
        WINNING_LINES.any? { |line| line.none? { |open_square| board[open_square] } }
    end

    def find_all_winners(boards)
        boards.select { |board| won?(board) }
    end

    def mark_boards!(boards, move)
        boards.each { |board| board.map! { |square| square == move ? nil : square } }
    end

    def calculate_winning_sum(board, move)
        board_sum = board.compact.map! { |square| square.to_i }.inject(:+)
        board_sum * move.to_i
    end

end