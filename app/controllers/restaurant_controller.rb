class RestaurantController < ApplicationController
  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def index
    if params[:category].blank?
      @restaurants = RESTAURANTS
    else
      @restaurants = RESTAURANTS.select do |index, restaurant|
        restaurant[:category] == params[:category]
      end
    end
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end

  def create
    raise
  end
end
