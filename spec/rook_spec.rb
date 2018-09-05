require 'pry'
require 'rspec'
require 'board'
require 'piece'
require 'sliding_piece'
require 'rook'

describe "Rook" do
  let(:board){ Board.new }
  let(:rook) { Rook.new(board, "a2") }

  it "should calculate the correct move coordinates" do 
    coordinates = rook.calculate_moves
    expect(rook.get_valid_coordinates(coordinates)).to contain_exactly([1,1],[1,3],[1,4],[1,5],[1,6],[1,7],[1,8],[2,2],[3,2],[4,2],[5,2],[6,2],[7,2],[8,2])
  end

  it 'should output valid moves of rook piece' do
    expect { rook.validate_and_get_possible_moves }.to output("All valid moves: a1,a3,a4,a5,a6,a7,a8,b2,c2,d2,e2,f2,g2,h2\n").to_stdout
  end
end