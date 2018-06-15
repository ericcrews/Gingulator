require 'sinatra'
require 'twilio-ruby'

get '/sms-quickstart' do
	twiml = Twilio::TwiML::MessagingResponse.new do |r|
		r.message(body: 'Ahoy! Thanks so much for your message.')
	end

	twiml.to_s
end

post '/facebook-inbound' do
	twiml = Twilio::TwiML::MessagingResponse.new do |r|
		r.message(body: 'Hello from Facebook!')
	end

	twiml.to_s
end
