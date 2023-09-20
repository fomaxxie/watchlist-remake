class ReviewsController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @review = Review.new(list: @list)
  end

  def create
    @list = List.find(params[:list_id])
    @review = Review.new(review_params)
    @review.list = @list
    @review.save
    redirect_to list_path(@list)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to list_path(@review.list)
  end

  private
  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
