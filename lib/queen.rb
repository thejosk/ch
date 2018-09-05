class Queen < SlidingPiece

  def move_directions
    [
      [0,-1],
      [0,1],
      [-1,1],
      [-1,-1],
      [1,1],
      [1,-1],
      [1,0],
      [-1,0], 
    ]
  end
end