require 'httparty'
require 'sinatra'
require 'twilio-ruby'

post '/inbound' do
	# Events API|Slack - URL Verification Handshake
	# Uncomment this if registering a new request URL w/ Slack's event subscriptions
	data = JSON.parse request.body.read
	#challenge = data['challenge']
  #return [200, [challenge]]

	#twiml = Twilio::TwiML::MessagingResponse.new do |r|
	#	r.message(body: 'Ahoy! Thanks so much for your message.')
	#end

	event = data['event']
	channel = event['channel']
	token = 'xoxb-136386538564-384691592471-m4tedoLyF5YCAO236Jhi2Iyh'
	user = event['user']
	text = "Hello!"

	unless event['username']
			headers = {
				'Content-Type' => 'application/json',
				'Authorization' => "Bearer #{token}"
			}
			
			body = { channel: channel, text: text }.to_json
			
			res = HTTParty.post(
				'https://slack.com/api/chat.postMessage',
				headers: headers,
				body: body
			)
	end

	#[200, twiml.to_s]
end
