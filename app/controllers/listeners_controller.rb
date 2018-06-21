require 'twilio-ruby'
require 'httparty'

class ListenersController < ApplicationController
  def slack
		event_wrapper = request.request_parameters

		# Slack URL Verification
		if event_wrapper['challenge']
			render json: event_wrapper['challenge']
		end

		# Process Slack Event
		event = event_wrapper['event']
		unless event['username']
			text = 'Hello, world!'

			HTTParty.post(
				'https://slack.com/api/chat.postMessage',
				headers: {
					'Content-Type' => 'application/json',
					'Authorization' => 'Bearer ' \
					"#{Rails.application.credentials.slack[:bot_token]}"
				},
				body: {
					'channel' => event['channel'],
					'text' => text
				}.to_json
			)
		end
	end

  def twilio
		twiml = Twilio::TwiML::MessagingResponse.new do |r|
			r.message(body: 'Hello, world!')
		end
		
		render xml: twiml.to_s
  end
end
