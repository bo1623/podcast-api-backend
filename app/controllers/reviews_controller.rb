class ReviewsController < ApplicationController

  def create
    # raise params.inspect
    user=User.find_by(username: params[:username])
    podcast=Podcast.find_by(podcast_id: params[:podcast_id])
    review=Review.create(user: user, podcast:podcast, text:params[:review])
  end

  def index
    podcast=Podcast.find_by(podcast_id: params[:podcast_id])
    reviews=podcast.reviews
    render json: ReviewSerializer.new(reviews).to_serialized_json
  end



end
