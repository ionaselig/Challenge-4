require 'twilio-ruby'

# To find these visit https://www.twilio.com/user/account
account_sid = "ACXXXXXXXXXXXXXXXXX"
auth_token = "YYYYYYYYYYYYYYYYYY"

@client = Twilio::REST::Client.new account_sid, auth_token

@message = @client.account.messages.create({:to => "+12316851234",
                                   :from => "+15555555555",
                                   :body => "Hello there!"})