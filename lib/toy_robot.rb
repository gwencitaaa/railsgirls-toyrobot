<<<<<<< HEAD
class ToyRobot
  ERROR_MESSAGE = "Invalid direction: Please chose North, South, East, or West."
  VALID_DIRECTIONS = %i[north south east west]

  attr_accessor :position, :direction

  def initialize(x: 0, y: 0, direction: :north)
=======
class ToyRobot 
  ERROR_MESSAGE = "Invalid direction: please choose North, South, East or West."
  VALID_DIRECTIONS = %i[north south east west]
  attr_accessor :position, :direction

  def initialize(x: 0, y: 0, direction: :north) 
>>>>>>> 8828a94164ff5597274b9b73b03022a9af8c18be
    raise ERROR_MESSAGE unless VALID_DIRECTIONS.include? direction
    @position = [x, y]
    @direction = direction
  end
<<<<<<< HEAD

=======
    
>>>>>>> 8828a94164ff5597274b9b73b03022a9af8c18be
  def move
    if direction == :north
      move_y(1)
    elsif direction == :south
      move_y(-1)
    elsif direction == :east
      move_x(1)
<<<<<<< HEAD
    else
      move_x(-1)
=======
    else 
      move_x(-1) 
>>>>>>> 8828a94164ff5597274b9b73b03022a9af8c18be
    end
  end

  private

  def move_x(value)
    position[0] += value
  end
<<<<<<< HEAD
=======
  
  def move_y(value)
    position[1] += value
  end
>>>>>>> 8828a94164ff5597274b9b73b03022a9af8c18be

  def move_y(value)
    position[1] += value
  end
end
