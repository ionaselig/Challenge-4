# require 'takeaway'
# require 'customer'
# require 'gemfile'

# 	context 'takeaway menu'

# 		it 'can initialize with list of dishes' do
# 		#array of dishes
# 		end 

# 		it 'feeds prices of dishes into a hash' do
# 		#map prices onto dishes
# 		end

# 	end 

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

