class Board
 attr_accessor :cells
 @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
   def initialize
 	   reset!
   end
 
 def reset!
  @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "] 
 end
 
 def display
 puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
 puts "-----------"
 puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
 puts "-----------"
 puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
 end
 
 def position(input)
 	 cells[input.to_i - 1]
  end

  def update(input, player)
    cells[input.to_i - 1] = player.token
  end
 
  def full?
    if cells.all? {|value| value == "X" || value == "O"}
      true
    else
      false
   end
 end
 
 def turn_count
 	cells.count{|position| position == "X" || position == "O" }
 end
 
 def taken?(input)
   if position(input) == "X" || position(input) == "O"
      true
    else position(input) == " " || "" || nil
      false
    end
  end
 
  def valid_move?(input) 
   input.to_i.between?(1, 9) && !taken?(input) 
  end
end
 
