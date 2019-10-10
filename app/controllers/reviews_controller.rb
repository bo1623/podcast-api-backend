class ReviewsController < ApplicationController

  def create
    # raise params.inspect
    byebug
    user=User.find_by(username: params[:username])
    podcast=Podcast.find_by(podcast_id: params[:podcast_id])
    review=Review.create(user: user, podcast:podcast, text:params[:review])
  end

end
