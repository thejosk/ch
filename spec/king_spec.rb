require 'pry'
require 'rspec'
require 'board'
require 'piece'
require 'stepping_piece'
require 'king'

describe "King" do
  let(:board){ Board.new }
  let(:king) { King.new(board, "c3") }  

  it "should calculate the correct move coordinates" do 
    coordinates = king.calculate_moves
    expect(king.get_valid_coordinates(coordinates)).to contain_exactly([2,2],[2,3],[2,4],[3,2],[3,4],[4,2],[4,3],[4,4])
  end

  it 'should output valid moves of king piece' do
    expect { king.validate_and_get_possible_moves }.to output("All valid moves: c2,c4,b4,b2,d4,d2,d3,b3\n").to_stdout
  end 
end