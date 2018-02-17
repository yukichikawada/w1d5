
class KnightPathFinder
  BOARD_SIZE = 8

  def initialize(pos)
    @visited_positions = []
    @position = pos
    # calls build_move_tree
  end

  def valid_moves(pos)git status
    
    possible_moves = [[1, 2], [1, -2], [-1, 2], [-1, -2], [2, 1], [-2, 1], [-2, -1], [2, -1]]

    if

    end
  end

  def new_move_positions(pos)
    # calls valid_moves
  end

  def build_move_tree
    # calls new_move_positions
  end

  def find_path(pos)
    target_position = pos
  end

end
