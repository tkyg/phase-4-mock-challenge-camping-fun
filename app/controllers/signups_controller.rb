class SignupsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    signups = Signup.all
    render json: signups
  end

  def show
    signup = Signup.find(params[:id])
    render json: camper
  end

  def create
    signup = Signup.create(signup_params)
    render json: signup, status: :created
  end
  
  private
  def render_not_found_response
    render json: { error: "Signup not found" }, status: :not_found
  end

  def signup_params
    params.permit(:time)
  end


end
