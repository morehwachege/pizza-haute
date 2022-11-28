class PizzasController < ApplicationController
  def index
    pizzas = Pizza.all
    render json: pizzas, status: :ok
  end

  def show
    pizza = Pizza.find(params[:id])
    render json: pizza, status: :ok
  end

  def update
  end

  def delete
  end
end
