class GymsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

  def show
    gym = Gym.find(params[:id])
    render json: gym, status: :ok
  end

  private

  def render_record_not_found
    render json: { error: 'Gym not found' }, status: :not_found
  end
end
