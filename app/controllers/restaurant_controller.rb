class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
   
    def index 
        restaurants = Restaurant.all  
        render json: restaurants
    end

    def show  
        restaurant = Restaurant.find(params[:id])
        render json: restaurant, serializer: RestaurantsWithPizzasSerializer, include: :pizzas
    end

    def destroy  
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        head :no_content
    end

    private

    def not_found_response 
        render json: {error: "Restaurant not found"}, status: :not_found
    end

end