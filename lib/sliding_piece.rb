class SlidingPiece < Piece

  def calculate_moves
    current_position_coordinates = self.board.coordinates[self.position]
    potential_coordinates = []

    move_directions.each do |direction|
      7.times do |i|
        potential_coordinates << [current_position_coordinates[0] + direction[0], current_position_coordinates[1] + direction[1]]
        current_position_coordinates = [current_position_coordinates[0] + direction[0], current_position_coordinates[1] + direction[1]]
      end
      current_position_coordinates = self.board.coordinates[self.position] 
    end
    potential_coordinates
  end
end