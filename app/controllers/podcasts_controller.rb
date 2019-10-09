class PodcastsController < ApplicationController

  def index
    podcasts=Podcast.all
    render json: PodcastSerializer.new(podcasts).to_serialized_json
  end

  def create

  end

end
