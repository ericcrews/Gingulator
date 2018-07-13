class HomeController < ApplicationController
  # before_action :set_app_info, only: [:show, :update, :destroy]

  # This allows Dialogflow to post to the Gingulator without authentication.
  # Probably not a good idea to do this in an actual app.
  skip_before_action :authenticate_user!, only: [:index]

  # GET /home
  def index
   #  @home = Home.all
  end
end
