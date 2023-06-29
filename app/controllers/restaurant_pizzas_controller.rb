class RestaurantPizzasController < ApplicationController
    def create
        restaurant=RestaurantPizza.create(restaurant_pizza_params)
        render json: restaurant.pizza
    end

    private

    def restaurant_pizza_params
        params.permit(:price,:pizza_is,:restaurant_id)
    end
end
