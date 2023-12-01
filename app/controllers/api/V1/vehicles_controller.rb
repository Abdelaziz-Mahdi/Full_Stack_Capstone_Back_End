class Api::V1::VehiclesController < ApplicationController
  # TODO: update actions
  def create; end

  def show
    @vehicle = Vehicle.find(params[:id])
    render json: @vehicle, status: :ok
  end

  def index
    @vehicles = Vehicle.order(created_at: :desc).all

    if @vehicles.empty?
      render json: { error: 'No vehicles found' }, status: :not_found
    else
      render json: @vehicles
    end  
  end

  def destroy; end
end
