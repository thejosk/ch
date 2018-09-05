require 'pry'
require 'rspec'
require 'board'

describe 'Board' do
  let(:board) { Board.new }

  it 'should build board' do
    expect(board.coordinates.count).to eq(64)
  end

  it 'should assign correct coordinates' do
    expect(board.coordinates['g5']).to eq([7,5])
  end  
end
