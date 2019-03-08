class  Board

  attr_accessor :cells  

def initialize
 @cells= Array.new(9, " ")
end 

  def reset!
@cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
end

def display 

puts <<-DOC
 #{@cells[0]} | #{@cells[1]} | #{@cells[2]} 
-------------
 #{@cells[3]} | #{@cells[4]} | #{@cells[5]} 
-------------
 #{@cells[6]} | #{@cells[7]} | #{@cells[8]} 
DOC
end


def position(input)
 val =input.to_i
"#{@cells[val-1]}"
end

def full?
@cells.count(" ") == 0
end





end