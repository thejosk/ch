require 'pry'
require 'rspec'
require 'board'
require 'piece'
require 'stepping_piece'
require 'knight'

describe "Knight" do
	let(:board){ Board.new }
	let(:knight) { Knight.new(board, "h5") }

  it "should calculate the correct move coordinates" do 
    coordinates = knight.calculate_moves
    expect(knight.get_valid_coordinates(coordinates)).to contain_exactly([7,3],[6,4],[6,6],[7,7])
  end

  it 'should output valid moves of knight piece' do
    expect { knight.validate_and_get_possible_moves }.to output("All valid moves: f6,f4,g7,g3\n").to_stdout
  end
end