class ReviewsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@review.restaurant) # Show
    else
      render :new
    end
  end

  def review_params
    # *Strong params*: You need to *whitelist* what
    # can be updated by the user
    # Never trust user data!
    params.require(:review).permit(:content, :rating)
  end
end
