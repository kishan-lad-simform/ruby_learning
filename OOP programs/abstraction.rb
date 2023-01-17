class Vehicle    #It is act like abstract class 
    def initialize
        raise "You can't create object of abstract class!!"
    end
    def speed
        raise "It is abstract method, You can't use this!!"
    end
end

class Car < Vehicle
    def initialize 
        puts "Constructor of car is called."
    end
    def speed
        @speed=100
        puts "Car speed is #@speed."
    end
end
objectOfCar=Car.new
objectOfCar.speed
objectOfVehicle=Vehicle.new    #It will raise the error. 
objectOfVehicle.speed          #It will raise the error.