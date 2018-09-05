class Piece
  attr_reader :position, :board

  def initialize(board, position)
    @position = position.downcase
    @board = board
  end

  def print_valid_moves(valid_coordinates)
    valid_moves = valid_coordinates.map { |c| self.board.coordinates.key(c) }
    puts "All valid moves: #{valid_moves.join(",")}"
  end  

  def validate_and_get_possible_moves
    if self.board.coordinates.keys.include?(self.position)
      calculated_coordinates = calculate_moves
      valid_coordinates = get_valid_coordinates(calculated_coordinates)
      print_valid_moves(valid_coordinates)
    else
      puts "Invalid position or piece."      
    end
  end

  def get_valid_coordinates(calculated_coordinates)
    valid_coordinates = calculated_coordinates.select do |i|
      i[0].between?(1,8) &&
      i[1].between?(1,8)
    end
  end
end