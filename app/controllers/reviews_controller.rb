class ReviewsController < ApplicationController

  def create
    user=User.find_by(username: params[:username]) #user should have been created when the user logs in
    podcast_hash=params[:podcast]
    podcast_hash_mod=podcast_hash.each{|key,value| key.to_sym}
    podcast_hash_mod=podcast_hash_mod.reject { |k,v| k == "total_episodes" }
    podcast=Podcast.find_or_create_by(podcast_hash_mod)
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
