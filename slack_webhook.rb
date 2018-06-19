require 'httparty'
require 'sinatra'

url = 'https://slack.com/api/chat.postMessage'
token = '' # Find the value @ https://api.slack.com/apps/AB9EH2B0W/oauth? - don't post it in the repo!

post '/listening' do
	event_wrapper = JSON.parse(request.body.read)	

	# Slack URL Verification
	if event_wrapper['challenge']
			return [200, event_wrapper['challenge']]
	end

	# Process Slack Event
	event = event_wrapper['event']
	unless event['username']  # Make sure bot isn't responding to itself
		text = 'Hello, world!'
		HTTParty.post(
			url,	
			headers: {
				'Content-Type' => 'application/json',
				'Authorization' => "Bearer #{token}"
			},	
			body: {
				'channel' => event['channel'],
				'text' => text
			}.to_json	
		)
	end
end
