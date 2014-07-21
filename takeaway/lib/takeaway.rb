class Takeaway
  def initialize
    @dishes = []
  end

#	initialize with dishes [], quantities [] and price [sum]
# 	put dishes and prices into arrays and merge into a hash
# => speak to customer file for the order quantities and time (timestamp) placed in gets.chomp form
# => speak to sms file in order to send the confirmation text 
		#puts ''
  def display_menu
    str = ""
    @dishes.each do |dish,price|
      str += "#{dish} -- £#{sprintf("%2.2f",price/100)}\n"
    end
    puts str
  end

  def add_dish(dish, price) 
    @dishes << [dish,price]
  end 
end

