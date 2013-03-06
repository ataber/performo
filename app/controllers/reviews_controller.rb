class ReviewsController < ApplicationController
  def create
    @performer = Performer.find(params[:performer_id])
    @review = @performer.reviews.create(params[:review])
    redirect_to performer_path(@performer)
  end

  def destroy
    @performer = Performer.find(params[:performer_id])
    @review = @performer.reviews.find(params[:review])
    @review.destroy
    redirect_to performer_path(@performer)
  end
end
