class ReviewsController < ApplicationController

  def create
    raise params.inspect
    user=User.find_by(username: params[:username]) #user should have been created when the user logs in 
    podcast=Podcast.find_by(podcast_id: params[:podcast_id])
    review=Review.create(user: user, podcast:podcast, text:params[:review])
  end

  def index
    podcast=Podcast.find_by(podcast_id: params[:podcast_id])
    if !!podcast #if the podcast exists
      reviews=podcast.reviews
      render json: ReviewSerializer.new(reviews).to_serialized_json
    else
      render json: [].to_json
    end
  end



end
