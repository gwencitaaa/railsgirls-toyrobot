class ToyRobot 
    attr_accessor :position

    def initialize 
        @position = [0, 0]
    end
    
    def move(x: 0, y: 0)
        position[0] += x
        position[1] += y
    end

end
