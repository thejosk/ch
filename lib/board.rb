class Board
  attr_reader :coordinates

  Horizontals = ("a".."h").to_a
  Verticals = (1..8).to_a
  Board_Mapping = {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8}

  def initialize
    @coordinates = {}
    build_board
  end

  def build_board
    Horizontals.each do |x|
      Verticals.each do |n|
        @coordinates["#{x}#{n}"] = [Board_Mapping[x], n]
      end
    end
  end 
end