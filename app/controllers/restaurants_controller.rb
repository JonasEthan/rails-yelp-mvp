class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def top
    @restaurants = Restaurant.where(rating: 5)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    raise
  end
end
