require 'twilio-ruby'

account_sid = 'AC0c905be162720900a2afe2dd8014418f'
auth_token = '6e79d9a036c11ecdac4b91e1a1672e07'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+13133074476' # Twilio number
to = '+17346356711' # My mobile phone number

client.messages.create(
	from: from,
	to: to,
	body: "Hello, world!"
)
