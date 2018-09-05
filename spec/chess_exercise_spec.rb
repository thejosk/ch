require 'rspec'
require 'board'
require 'piece'
require 'sliding_piece'
require 'stepping_piece'
require 'king'
require 'queen'
require 'rook'
require 'knight'

describe "chess_exercise.rb" do

  it "should output all valid moves for the given piece at the given position when run" do
    `ruby lib/chess_exercise.rb king a7`.should == "All valid moves: a6,a8,b8,b6,b7\n" 
    `ruby lib/chess_exercise.rb queen f4`.should == "All valid moves: f3,f2,f1,f5,f6,f7,f8,e5,d6,c7,b8,e3,d2,c1,g5,h6,g3,h2,g4,h4,e4,d4,c4,b4,a4\n" 
    `ruby lib/chess_exercise.rb rook g5`.should == "All valid moves: g4,g3,g2,g1,g6,g7,g8,h5,f5,e5,d5,c5,b5,a5\n" 
    `ruby lib/chess_exercise.rb knight b2`.should == "All valid moves: a4,c4,d3,d1\n"    
  end

  it "should output error message when invalid position or piece is entered" do
    `ruby lib/chess_exercise.rb kig a7`.should == "Please choose between king, queen, rook or knight.\n" 
    `ruby lib/chess_exercise.rb queen z4`.should == "Invalid position or piece.\n"     
  end
end