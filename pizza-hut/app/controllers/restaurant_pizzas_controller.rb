class RestaurantPizzasController < ApplicationController
  def index
    rest_pizza = RestaurantPizza.all 
    render json: rest_pizza, except: [:created_at, :updated_at], status: :ok
  end

  def create
    rest_pizza = RestaurantPizza.create!(rest_pizza_params)

  end


  private

  def rest_pizza_params
    params.permit(:price, :pizza_id, :restaurant_id)
  end

end
