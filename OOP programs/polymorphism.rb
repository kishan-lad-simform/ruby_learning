class Drive 
    def initialize
      super
      puts "Driving constructor"
    end
  
    def drive
      puts "I'm main driving method"
    end
  end
  
  class Car < Drive
      def initialize
          puts "Constructor of Car."
      end
      def drive
          puts "I'm driving a car."
      end
  end
  class Bike < Drive
      def initialize 
          super
          puts "Constructor of Bike."
      end
  
      def drive
          
          puts "I'm driving bike."
      end
  end
  
  obj=Bike.new
  obj.drive  #It will call method of bike class
  p "---------------------"
  obj1=Car.new
  obj1.drive  #It will call method of car class