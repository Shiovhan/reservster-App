class RestaurantsController < ApplicationController

	def index
	@restaurants = Restaurant.all
	end

	def show
	@restaurants = Restaurant.find(params[:id])
	end

	def new
	@restaurants = Restaurant.new
	end

	def create
	  @restaurants = Restaurant.new(params.require(:restaurant).permit(:name))
    if @restaurant.save
      redirect_to restaurants_url
    else
      render action: "new"
    end
  end


def update
	@restaurants = Restaurant.find(params[:id])
	 if @restaurant.save
      redirect_to restaurants_url
    else
      render action: "show"
    end
end

	def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_url
  end
end



