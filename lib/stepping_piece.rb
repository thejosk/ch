class SteppingPiece < Piece

  def calculate_moves
    current_position_coordinates = self.board.coordinates[self.position]
    potential_coordinates = []

    move_directions.each do |direction|
      potential_coordinates << [current_position_coordinates[0] + direction[0], current_position_coordinates[1] + direction[1]]
    end

    potential_coordinates
  end
end