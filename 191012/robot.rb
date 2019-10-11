# You run a robot factory. As robots are created, they roll off the conveyor belt as empty, mindless husks of machinery -- until you first boot them up.

# The first time you boot them up, a random name is randomly generated, and assigned to itself by the robot.

# Names typically take the format of things like "BX777" or "SD234".

# For instance:

# robot1 = Robot.new

# puts robot1.name
# => "BX777"

# robot2 = Robot.new

# puts robot2.name
# => "SD234"

# puts robot2.name
# => "SD234"


SecureRandom.hex(3).to_s

preface = ('A'..'Z').to_a
suffix = ('0'..'9').to_a



class Robot

    attr_accessor :name

    def initialize
        @name = ''
        generate_name()
    end
    
    def reset
        generate_name
    end
    
    def generate_name()
        @name = ''
        @name += (0..1).map { ('A'..'Z').to_a[rand(26)]}.join
        @name += (0..2).map {('0'..'9').to_a[rand(10)]}.join
    end

end

robot1 = Robot.new
robot2 = Robot.new

p robot1.name
p robot2.name

p robot1.name

robot1.reset
robot2.reset

p robot1.name
p robot2.name




# require 'securerandom'
# class Robot
#     attr_accessor :name
    
#     def initialize
#         @name = ''
#         name_robot
#     end

#     def name_robot
#         @name = SecureRandom.hex(3).to_s
       
#     end

# end

# robot1 = Robot.new
# p robot1.name
# p robot1.name