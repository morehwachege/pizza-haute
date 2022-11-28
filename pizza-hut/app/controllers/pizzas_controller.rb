class PizzasController < ApplicationController
  def index
    pizzas = Pizza.all
    render json: pizzas, status: :ok, except: [:created_at, :updated_at]
  end

  def show
    pizza = Pizza.find(params[:id])
    render json: pizza, status: :ok, except: [:created_at, :updated_at]
  end

  def update
  end

  def delete
  end
end
