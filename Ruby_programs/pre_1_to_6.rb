class Car
  NO_OF_WHEEL = 4

  def display
    puts "*******************Menu*********************"
    puts "1.Calculate the GST."
    puts "2.Check scoop of local and instance variables."
    puts "3.Constant use in function."
    puts "4.Take input from argument and print it."
    puts "5.Enum for fual."
    puts "Press 0 for exit."
    puts "**********************************************"
  end

  def calculate_GST
    puts "**Calculating price with GST**"
    print "Enter your price : "
    base_price = gets.chomp.to_f
    total_amount = (base_price + ((base_price * 18) / 100)).to_i
    gst_amount = (total_amount - base_price).to_i
    puts "**Your calculated Total amount is #{total_amount} .\nYour GST amount is #{gst_amount} .**\n"
  end

  def checking_scoop
    @@color = "Brown" # This class variable is access every where in class but not outside thr class, It will showing error for that

    def lights
      @color = "Blue" # This is instance variable and it is accessible only in the methods of class not even out side of methods
      color = "Red"
      puts "I am in light function and testing local variable : #{color}" #local variable can't be access outside the one function where it define.
    end

    def call_light
      puts "Hey, your instance variable color is \"#{@color}\" and for class variable \"#{@@color}\" "        #We can't access local variable outside of the function
    end
  end

  def check_wheel
    puts "**In your car, number of wheel is #{NO_OF_WHEEL} **"
  end

  def set_color(color)
    puts "**The color of the car is #{color} **"
  end

  module Fual
    PETROL_PRICE = 78
    DIESEL_PRICE = 75
  end

  def call_price
    puts "Petrol price is : #{Fual::PETROL_PRICE}\nDiesel price is : #{Fual::DIESEL_PRICE}"
  end
end

object_car = Car.new

loop do
  object_car.display
  print "Enter Your choice :"
  user_choice = gets.chomp.to_i
  case user_choice
  when 1
    object_car.calculate_GST
  when 2
    object_car.checking_scoop
    object_car.lights
    object_car.call_light
  when 3
    object_car.check_wheel
  when 4
    print "Enter the color name : "
    get_color = gets.chomp.to_s
    object_car.set_color(get_color)
  when 5
    object_car.call_price
  when 0
    exit
  else
    puts "Choose between 1 to 6 or ZERO(0)."
  end
  break if user_choice == 0
end
