def use_proc_lambda
  def define_proc
    x = proc { |a, b| puts "The squre of a is #{a ** 2} and b is #{b ** 2}" }
  end

  def define_lambda
    y = lambda { |a, b| puts "The squre of a is #{a ** 2} and b is #{b ** 2}" }
  end
end

puts "--------------For proc------------------"
use_proc_lambda.define_proc.call 2, 3
use_proc_lambda.define_proc.call 2, 2, 3 #This will not showing error and it isn't handle the argument.
puts "\n----------------For lambda-------------"
use_proc_lambda.define_lambda.call 2, 5
#use_proc_lambda.define_lambda.call 2,4,3  This will showing error because It handle the arguments and it is not like proc
