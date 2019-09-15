class ToyRobot 
  ERROR_MESSAGE = "Invalid direction: please choose North, South, East or West."
  VALID_DIRECTIONS = %i[north south east west]
  attr_accessor :position, :direction

  def initialize(x: 0, y: 0, direction: :north) 
    raise ERROR_MESSAGE unless VALID_DIRECTIONS.include? direction
    @position = [x, y]
    @direction = direction
  end
    
  def move
    if direction == :north
      move_y(1)
    elsif direction == :south
      move_y(-1)
    elsif direction == :east
      move_x(1)
    else 
      move_x(-1) 
    end
  end

  private

  def move_x(value)
    position[0] += value
  end
  
  def move_y(value)
    position[1] += value
  end

end
