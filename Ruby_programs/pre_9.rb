require "date"
curr_date = DateTime.now
puts "Today's date and time is #{curr_date.strftime "%d/%m/%Y  %H:%M"} and the date after 30 days is #{(curr_date + 30).strftime "%d/%m/%Y  %H:%M"} "
