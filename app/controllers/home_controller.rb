class HomeController < ApplicationController
  # POST / FIXME : CHANGE RAILS ROUTE FOR DIALOGFLOW! 
  def data
	@app_info = AppInfo.new do |a|
		a.first_name = params["queryResult"]["outputContexts"][1]["parameters"]["first_name"]
		a.last_name = params["queryResult"]["outputContexts"][1]["parameters"]["last_name"]
		a.developer_type = params["queryResult"]["outputContexts"][1]["parameters"]["dev_type"]
		a.hometown = params["queryResult"]["outputContexts"][1]["parameters"]["hometown"]
		a.email = params["queryResult"]["outputContexts"][1]["parameters"]["email"]
		a.phone = params["queryResult"]["outputContexts"][1]["parameters"]["phone"]
		a.twitter_handle = params["queryResult"]["outputContexts"][1]["parameters"]["twitter"]
		a.university = params["queryResult"]["outputContexts"][1]["parameters"]["university"]
		a.gpa = params["queryResult"]["outputContexts"][1]["parameters"]["gpa"]
		a.fun_facts = params["queryResult"]["outputContexts"][1]["parameters"]["three_things"]
		a.why_startup = params["queryResult"]["outputContexts"][1]["parameters"]["why_startup"]
		a.phrase = params["queryResult"]["outputContexts"][1]["parameters"]["phrase"]
	end	
end
