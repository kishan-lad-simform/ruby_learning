class Car 
    def initialize
      puts "I'm constructor of car class."
    end
    def speedTest
      @carSpeed=100
      puts "Car speed is #@carSpeed KMpH."
    end
  end
  
  class SportCar < Car
    def initialize 
      super
      puts "I'm constructor of Sport car class."
    end  
  
    def speedTest
      super
      @sportCarSpeed=140
      puts "Sport car speed is #@sportCarSpeed KMpH ."
    end
  end
  
  class Speed < SportCar
    def initialize
      super
      puts "Checking Speed of both cars."
    end
    
    def checkSpeed
      puts "\nCar speed : #{@carSpeed} \nSport car speed : #{@sportCarSpeed}"
    end
  end
  
  objectOfSpeed=Speed.new
  puts "\n----------checking speed-----------"
  objectOfSpeed.speedTest
  objectOfSpeed.checkSpeed