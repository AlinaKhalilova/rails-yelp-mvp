
class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def top
    @restaurants = Restaurant.where(stars: 5)
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

   def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def edit
  end


  def create
    @restaurant = Restaurant.new
    @restaurant.save
  end


  def update
    respond_to do |format|
      if @restaurant.update
        redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
      else
        render :edit
      end
    end
  end


  def destroy
    @restaurant.destroy
    redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.'
  end


end
