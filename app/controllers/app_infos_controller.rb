class AppInfosController < ApplicationController
  before_action :set_app_info, only: [:show, :update, :destroy]

  # GET /app_infos
  def index
    @app_infos = AppInfo.all
  end

  # GET /app_infos/1
  def show
  end

  # POST /app_infos
  def create
    @app_info = AppInfo.new(app_info_params)

    if @app_info.save
      render json: @app_info, status: :created, location: @app_info
    else
      render json: @app_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /app_infos/1
  def update
    if @app_info.update(app_info_params)
      render json: @app_info
    else
      render json: @app_info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /app_infos/1
  def destroy
    @app_info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_info
      @app_info = AppInfo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def app_info_params
      params.require(:app_info).permit(:first_name, :last_name, :hometown, :email, :phone, :twitter_handle, :university, :field, :phrase, :developer_type, :why_startup, :fun_facts, :gpa)
    end
end
