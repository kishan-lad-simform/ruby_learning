class Car 
    def initialize
        puts "I'm constructor of Car."
    end
   
    def carDriving
        puts "I'm driving car."
    end
  end
  class CarParts < Car
    def initialize
        super           #It will call Car class's constructor
        puts "I'm constructor of CarParts."
    end
    def parts
        puts "I'm core of the car."
    end
  end
  objectOfCar=CarParts.new
  objectOfCar.parts       #It will execute the parts mehtod 
  objectOfCar.carDriving  #It will execute the carDriving method