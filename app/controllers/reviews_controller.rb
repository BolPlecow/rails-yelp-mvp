class ReviewsController < ApplicationController
 def new
   @review = Review.new
 end

 def create
  @review = Restaurant.new(review_params)
  @review.save
  redirect_to review_path
 end

 private

 def review_params
  params.require(:review).permit(:content, :rating)
 end
end
