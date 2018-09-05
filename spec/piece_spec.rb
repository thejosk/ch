require 'pry'
require 'rspec'
require 'board'
require 'piece'
require 'stepping_piece'
require 'king'

describe "Piece" do 
  let(:board){ Board.new }
  let(:piece) { Piece.new(board, "d8") }

  it "should read its position" do 
    expect(piece.position).to eq("d8")
  end
end