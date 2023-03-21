class RestaurantPizzasController < ApplicationController
    def create
      result = CreateRestaurantPizza.new.call(params[:price], params[:pizza_id], params[:restaurant_id])
      if result.success?
        render json: result.pizza
      else
        render json: { errors: result.errors.full_messages }, status: :unprocessable_entity
      end
    end
  end
