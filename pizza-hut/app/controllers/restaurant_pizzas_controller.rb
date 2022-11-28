class RestaurantPizzasController < ApplicationController
  wrap_parameters format: []
rescue_from ActiveRecord::RecordInvalid, with: :rescue_record_invalid

  def index
    rest_pizza = RestaurantPizza.all 
    render json: rest_pizza, status: :ok
  end

  def create
    rest_pizza = RestaurantPizza.create!(rest_pizza_params)
    render json: rest_pizza, status: :created
  end


  private

  def rest_pizza_params
    params.permit(:price, :pizza_id, :restaurant_id)
  end

  def rescue_record_invalid
    render json: {errors: ["validation errors"]}, status: :unprocessable_entity
  end

end
