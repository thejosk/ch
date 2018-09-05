require_relative 'board'
require_relative 'piece'
require_relative 'sliding_piece'
require_relative 'stepping_piece'
require_relative 'king'
require_relative 'queen'
require_relative 'rook'
require_relative 'knight'

if ARGV.any?
  type = ARGV[0]
  position = ARGV[1]
else
  puts "Please enter type of chess piece (king, queen, rook, knight) :"
  type = gets.chomp.strip
  puts "Please enter position of the piece :"
  position = gets.chomp.strip    
end

board = Board.new

case type
when "knight"
  piece = Knight.new(board, position)
when "rook"
  piece = Rook.new(board, position)
when "queen"
  piece = Queen.new(board, position)
when "king"
  piece = King.new(board, position)  
else
  puts "Please choose between king, queen, rook or knight."
  return
end

piece.validate_and_get_possible_moves