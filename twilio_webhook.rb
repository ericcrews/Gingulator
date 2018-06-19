require 'sinatra'
require 'twilio-ruby'

post '/listening' do
	twiml = Twilio::TwiML::MessagingResponse.new do |r|
		r.message(body: 'Hello, world!')
	end

	twiml.to_s
end
