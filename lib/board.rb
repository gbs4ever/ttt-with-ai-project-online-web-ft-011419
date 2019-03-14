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

def turn_count
  num = @cells.count(" ")
  9 - num 
end

def taken?(input)
   position(input) != " " ? true : false
end

def valid_move?(input)
i = input.to_i
  !taken?(input) && i.between?(1, 9)
end

def update(input, player)
  val = input.to_i
  #  position(input)[0] = player.token
   @cells[val-1] =  player.token
  # binding.pry
end



end