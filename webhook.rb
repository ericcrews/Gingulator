require 'sinatra'
require 'twilio-ruby'

post '/inbound' do
	twiml = Twilio::TwiML::MessagingResponse.new do |r|
		r.message(body: 'Ahoy! Thanks so much for your message.')
	end

	twiml.to_s
end
