require 'twilio-ruby'

account_sid = 'AC1f2e5d2314b5907e991c2763aad1f41f'
auth_token = '6859bfa82b2d09ce19755547b18576af'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+13133074476' # Twilio number
to = ARGV[0] # Your mobile phone number (from the command line)

client.messages.create(
	from: from,
	to: to,
	body: "Hello, world!"
)
