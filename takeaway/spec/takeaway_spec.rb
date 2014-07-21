require 'takeaway'
# require 'customer'
# require 'gemfile'
describe Takeaway do 

	context 'takeaway menu' do
    context 'no dishes' do
  		it 'display empty menu' do
        takeaway = Takeaway.new
  		  # 1. what's the method
        # 2. what are the arguments (if any)
        # 3. what is the return value (if any) <-- query
        # 4. what is the state change (if any) <-- command
        expect(takeaway).to receive(:puts).with("")
        takeaway.display_menu()

        #expect(display_menu()).to eq ""
  		end 
    end
    context 'multiple dishes' do
      it 'can display menu with one dish' do
        takeaway = Takeaway.new
        takeaway.add_dish('Chicken',100)
        expect(takeaway).to receive(:puts).with("Chicken -- £1.00\n")
        takeaway.display_menu()
      end 
      it 'can display menu with two dishes' do
        takeaway = Takeaway.new
        takeaway.add_dish('Chicken',100)
        takeaway.add_dish('Beef',200)
        expect(takeaway).to receive(:puts).with("Chicken -- £1.00\nBeef -- £2.00\n")
        takeaway.display_menu()
      end 
    end


# 		it 'feeds prices of dishes into a hash' do
# 		#map prices onto dishes
# 		end

	end 

# 	context 'customer order'
# 	#speak to customer file about fetching the order & sms file about confirmation
# 	end


# Make a Call
# require 'twilio-ruby'

# # To find these visit https://www.twilio.com/user/account
# account_sid = "ACXXXXXXXXXXXXXXXXX"
# auth_token = "YYYYYYYYYYYYYYYYYY"

# @client = Twilio::REST::Client.new account_sid, auth_token
# @call = @client.account.calls.create({:to => "9991231234", :from => "9991231234",
#     :url => "http://twimlets.com/holdmusic?Bucket=com.twilio.music.ambient"})
# puts @call.length
# puts @call.sid
#   end
# end 

# list of dishes with prices

# place order
# list of dishes (quantity, total no. dishes)
# throws error if total wrong

# send txt confirmation of successful order placement with time stamp (delivery within an hour)
# e.g. "Thank you! Your order was placed and will be delivered before 18:52".

end 