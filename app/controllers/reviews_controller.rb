#
class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    Review.create(review_params)
    redirect_to reviews_path
  end
end
