class Demo_iterator
  @@string_array = ["Red", "White", "Blue", "Green", "Cyan", "Purople"]
  @@array_demo = Array(1..10)

  def each_iterator
    puts "----------each iterator---------"
    @@array_demo.each do |demo_variable| #In that we can generate sequence series of number and print value of array or hash .
      print "#{demo_variable} "
    end
    puts "\n\n"
  end

  def collect_iterator
    puts "-------------collect iterator-----------"
    @@string_array.collect do |x| # This will collect all the records from the variable like array or hash and used to print and perform other operations
      print " ", x
    end
    puts "\n\n"
  end

  def times_iterator
    puts "-------------Times iterator----------"
    5.times do |i| # It will print value from 0 to 4 means total 5 and it will increment the value by it-self
      print " ", i
    end
    puts "\n\n"
  end

  def upto_iterator
    puts "-----------------Upto iterator---------------"
    6.upto(@@array_demo.size) do |i| #It will print the value according to the starting point 6 and ending pount which is size of array 10
      print " ", i
    end
    puts "\n\n"
  end

  def downto_iterator
    puts "---------------------downTo iterator---------------"
    5.downto(@@array_demo[0]) do |i| #It will print the value in descending order
      print " ", i
    end
    puts "\n\n"
  end

  def map_iterator
    puts "---------------map iterator-------------"
    @@string_array.map do |color|
      print "\"#{color}\" "               # It will iterate all value of string.
    end
    puts "\n\n"
  end

  def each_with_index_iterator
    puts "-----------------each_with_index_iterator--------------"
    @@string_array.each_with_index do |value, index| #It is used when we need to use index and the value at a time
      puts "#{value}\'s index is #{index}"
    end
    puts "\n\n"
  end
end

puts "********Iterators*********"
demo_obj = Demo_iterator.new
demo_obj.each_iterator
demo_obj.collect_iterator
demo_obj.times_iterator
demo_obj.upto_iterator
demo_obj.downto_iterator
demo_obj.map_iterator
demo_obj.each_with_index_iterator
