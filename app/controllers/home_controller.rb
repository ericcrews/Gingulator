class HomeController < ApplicationController
  # before_action :set_app_info, only: [:show, :update, :destroy]

  # This allows Dialogflow to post to the Gingulator without authentication.
  # Probably not a good idea to do this in an actual app.
  skip_before_action :authenticate_user!, only: [:data]

  # GET /home
  def home
    @home = home.all
  end

  # # GET /app_infos/1
  # def show
	# @app_info = AppInfo.find(params[:id])
  # end
  #
  # # POST /
  # def data
	# @app_info = AppInfo.new do |a|
	# 	a.first_name = params["queryResult"]["outputContexts"][1]["parameters"]["first_name"]
	# 	a.last_name = params["queryResult"]["outputContexts"][1]["parameters"]["last_name"]
	# 	a.developer_type = params["queryResult"]["outputContexts"][1]["parameters"]["dev_type"]
	# 	a.hometown = params["queryResult"]["outputContexts"][1]["parameters"]["hometown"]
	# 	a.email = params["queryResult"]["outputContexts"][1]["parameters"]["email"]
	# 	a.phone = params["queryResult"]["outputContexts"][1]["parameters"]["phone"]
	# 	a.twitter_handle = params["queryResult"]["outputContexts"][1]["parameters"]["twitter"]
	# 	a.university = params["queryResult"]["outputContexts"][1]["parameters"]["university"]
	# 	a.gpa = params["queryResult"]["outputContexts"][1]["parameters"]["gpa"]
	# 	a.fun_facts = params["queryResult"]["outputContexts"][1]["parameters"]["three_things"]
	# 	a.why_startup = params["queryResult"]["outputContexts"][1]["parameters"]["why_startup"]
	# 	a.phrase = params["queryResult"]["outputContexts"][1]["parameters"]["phrase"]
	# end
  #
	# if @app_info.save
  #     render json: @app_info, status: :created, location: @app_info
  #   else
  #     render json: @app_info.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # # POST /app_infos
  # def create
  #   @app_info = AppInfo.new(app_info_params)
  #
  #   if @app_info.save
  #     render json: @app_info, status: :created, location: @app_info
  #   else
  #     render json: @app_info.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # # PATCH/PUT /app_infos/1
  # def update
  #   if @app_info.update(app_info_params)
  #     render json: @app_info
  #   else
  #     render json: @app_info.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # # DELETE /app_infos/1
  # def destroy
	# @app_info = AppInfo.find(params[:id])
  #   @app_info.destroy
  #
	# respond_to do |format|
  #     format.html { redirect_to app_infos_url, notice: 'Candidate was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end
  #
  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_app_info
  #     @app_info = AppInfo.find(params[:id])
  #   end
  #
  #   # Only allow a trusted parameter "white list" through.
  #   def app_info_params
  #     params.require(:app_info).permit(:first_name, :last_name, :hometown, :email, :phone, :twitter_handle, :university, :field, :phrase, :developer_type, :why_startup, :fun_facts, :gpa)
  #   end
end
