require 'pry'
require 'rspec'
require 'board'
require 'piece'
require 'sliding_piece'
require 'queen'

describe "Queen" do
  let(:board){ Board.new }
  let(:queen) { Queen.new(board, "d4") }

  it "should calculate the correct move coordinates" do 
    coordinates = queen.calculate_moves
    expect(queen.get_valid_coordinates(coordinates)).to contain_exactly([3,3],[2,2],[1,1],[5,5],[6,6],[7,7],[8,8],[3,5],[2,6],[1,7],[5,3],[6,2],[7,1],[3,4],[2,4],[1,4],[5,4],[6,4],[7,4],[8,4],[4,1],[4,2],[4,3],[4,5],[4,6],[4,7],[4,8])
  end

  it 'should output valid moves of queen piece' do
    expect { queen.validate_and_get_possible_moves }.to output("All valid moves: d3,d2,d1,d5,d6,d7,d8,c5,b6,a7,c3,b2,a1,e5,f6,g7,h8,e3,f2,g1,e4,f4,g4,h4,c4,b4,a4\n").to_stdout
  end
end