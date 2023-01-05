class RestaurantsController < ApplicationController
  wrap_parameters format: []
rescue_from ActiveRecord::RecordNotFound, with: :rescue_record_not_found
  def index
    restaurants = Restaurant.all
    render json: restaurants, status: :ok
  end

  def show
    restaurant = Restaurant.find(params[:id])
    render json: restaurant, status: :ok
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
    head :no_content
  end

  private

  def rescue_record_not_found(invalid)
    render json: {error: "Restaurant not found" }, status: :unprocessable_entity
  end


end
