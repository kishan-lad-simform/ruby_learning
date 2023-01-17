class Car
    attr_reader :company
    attr_accessor :name,:id 
    
    def initialize(name,id,company)
      puts "I'm constructor"
      @name=name 
      @id=id
      @company=company
    end  
    def setData(name,id)
      @name=name
      @id=id  
    end
end

obj=Car.new("RangeRover","2","Tata")
puts "------------Data seted---------"
obj.setData("Altroz",6)   #It will set the data
puts "#{obj.name} is name and id is #{obj.id} and company is #{obj.company}"