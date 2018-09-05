class Knight < SteppingPiece

  def move_directions
    [
      [-2,1], 
      [-2,-1],
      [-1,2],
      [1,2],
      [2,1],
      [2,-1],
      [-1,-2],
      [1,-2]
    ]
  end
end