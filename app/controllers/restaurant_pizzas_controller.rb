class RestaurantPizzasController < ApplicationController
    def create
        RestaurantPizza.create(restaurant_pizza_params)
    end

    private

    def restaurant_pizza_params
        params.permit(:price,:pizza_is,:restaurant_id)
    end
end
