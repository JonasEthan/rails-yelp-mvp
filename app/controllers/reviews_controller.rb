class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @rest = Restaurant.find(params[:restaurant_id])
    @review = Review.new(content: params[:review][:content], restaurant_id: @rest.id, rating: params[:review][:rating])
    @review.save
    redirect_to restaurant_path(@rest)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
