class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    def index
        render json: Restaurant.all, status: :ok
    end

    def show
        restaurant=Restaurant.find_by!(id: params[:id])
        render json: restaurant, serializer: RestaurantAndPizzasSerializer, status: :ok
    end

    def destroy
        restaurant=Restaurant.find_by!(id: params[:id])
        render json: {}, status: :no_content


    private
    def not_found_response
        render json: {error: "Restaurant not found"}
    end

end