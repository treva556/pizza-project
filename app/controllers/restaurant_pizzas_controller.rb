class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entitiy_response

    def create 
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restaurant_pizza.pizza, status: :created
    end
=begin
    def show
        restaurant_pizza = RestaurantPizza.find_by(id: params[:id])
        if restaurant_pizza.present?
          render json: restaurant.to_json(include: :pizzas)
        else
          render json: { error: 'Restaurant_pizza not found' }, status: :not_found
        end
      end
=end
    private

    def restaurant_pizza_params
        params.permit(:pizza_id, :restaurant_id, :price)
    end

    def render_unprocessable_entitiy_response(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end
end
