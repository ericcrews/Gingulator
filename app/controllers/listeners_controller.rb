require 'twilio-ruby'

class ListenersController < ApplicationController
  def slack
		puts 'slack - OK'
  end

  def twilio
		twiml = Twilio::TwiML::MessagingResponse.new do |r|
			r.message(body: 'Hello, world!')
		end
		
		render xml: twiml.to_s
  end
end
