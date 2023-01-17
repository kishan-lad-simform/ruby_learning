module Car
  
    def carDriving
        @carSpeed=100
        puts "I'm driving car."
    end
  end
  
  module Bike 
    def bikeDriving
        @bikeSpeed=70
      puts "I'm driving bike."
    end
  end
  
  class Vehicle
    def initialize
      puts "I'm constructor of vehicle."  
    end
  
    include Car     #It will include all the methods and variable of car module in this class.
    include Bike    #It will include all the methods and variable of bike module in this class.
  
   def callingSpeed
      puts "Car speed is #@carSpeed KMpH and Bike speed is #@bikeSpeed KMpH."  
  end
  
  end
  objectOfVehicle=Vehicle.new
  objectOfVehicle.bikeDriving  #calling method of bike module 
  objectOfVehicle.carDriving   #calling method of car module
  objectOfVehicle.callingSpeed